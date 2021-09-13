//
//  MovieListViewModel.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import Foundation
import SwiftUI

class MovieListViewModel: ViewModelBase {
    
    @Published var movies =  [MovieViewModel]()
    
    let httpClient = HTTPClient()
    
    
    func serchByName(_ name: String) {
        
        if name.isEmpty{
            return
        }
        
        self.loadingState = .loading
        
        httpClient.getMoviesBy(search: name.trimmedAndEscaped()) { result in
            
            switch result {
            case .success(let movies):
                if let movies = movies{
                    
                    DispatchQueue.main.sync {
                        self.movies = movies.map(MovieViewModel.init)
                        self.loadingState = .success
                    }
                    
                }
            
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.loadingState = .failed
                }
            }
        }
    }
}


struct MovieViewModel {
    
    let movie: Movie
    
    
    var imdbId: String{
        movie.imdbId
    }
    
    var title: String{
        movie.title
    }
    
    var poster: String{
        movie.poster
    }
    
    var year: String{
        movie.year
    }
    
    
    
}
