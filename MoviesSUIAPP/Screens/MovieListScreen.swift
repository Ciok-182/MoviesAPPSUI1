//
//  MovieListScreen.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    
    init() {
        movieListVM = MovieListViewModel()
        movieListVM.serchByName("batman")
    }
    
    var body: some View {
        VStack{
            MovieListView(movies: self.movieListVM.movies)
                .navigationTitle("Movies")
        }.embedNavigationView()
        
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        
        MovieListScreen()
    }
}
