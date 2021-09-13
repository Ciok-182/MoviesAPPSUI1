//
//  ViewModelBase.swift
//  MoviesSUIAPP
//
//  Created by Jorge Encinas on 12/09/21.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject{
    @Published var loadingState: LoadingState = .none
    
    
}
