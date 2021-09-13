//
//  MovieListView.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import SwiftUI

struct MovieListView: View {
    
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId ) { movie in
            MovieCellView(movie: movie)
        }
    }
}

//struct MovieListView_Previews: PreviewProvider {
//    static var previews: some View {
//        MovieListView()
//    }
//}

struct MovieCellView: View {
    
    let movie: MovieViewModel
    
    var body: some View {
        HStack(alignment: .top){
            URLImage(url: movie.poster)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                .cornerRadius(6)
            VStack(alignment: .leading){
                Text(movie.title)
                    .font(.headline)
                
                Text(movie.year)
                    .opacity(0.5)
                    .padding(.top, 10)
            }.padding(5)
            Spacer()
        }.contentShape(Rectangle())
    }
}
