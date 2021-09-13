//
//  ContentView.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Ciok")
            .onTapGesture {
                HTTPClient().getMoviesBy(search: "Batman"){ result in
                    
                    switch result{
                    case .success(let movies):
                        print(movies)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
