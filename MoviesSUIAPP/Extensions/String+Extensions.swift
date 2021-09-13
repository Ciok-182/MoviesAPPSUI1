//
//  String+Extensions.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import Foundation

extension String {
    
    func trimmedAndEscaped() -> String{
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        
        return
            trimmedString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
    
}
