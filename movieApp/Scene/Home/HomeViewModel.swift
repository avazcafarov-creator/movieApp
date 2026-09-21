//
//  HomeViewModel.swift
//  movieApp
//
//  Created by Avaz Cafarov on 18.09.26.
//

import Foundation

final class HomeViewModel {
    var movieItems = [HomeModel]()
    private let movieManager = MovieManager()
    
    var succes: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getMovies() {
        movieManager.getMovies { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.movieItems = data
                self.succes?()
            }
        }
    }
}
