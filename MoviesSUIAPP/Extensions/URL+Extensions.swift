//
//  URL+Extensions.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import Foundation

extension URL{
    
    static func forMoviesByName(_ name: String) -> URL? {
        return URL(string: "http://www.omdbapi.com/?s=\(name)&apikey=\(Constants.API_KEY)")
    }
}
