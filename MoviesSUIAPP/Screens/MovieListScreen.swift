//
//  MovieListScreen.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName = ""
    
    init() {
        movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack{
            
            TextField("Search", text: $movieName, onEditingChanged: { _ in}, onCommit: {
                movieListVM.serchByName(movieName)
            }).textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
            
                .navigationTitle("Movies")
            
            if self.movieListVM.loadingState == .success {
                MovieListView(movies: self.movieListVM.movies)
                    
                
            } else if self.movieListVM.loadingState == .failed{
                FailedView()
            } else if self.movieListVM.loadingState == .loading{
                LoadingView()
            }
            
            
        }.padding()
        .embedNavigationView()
        
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        
        MovieListScreen()
    }
}
