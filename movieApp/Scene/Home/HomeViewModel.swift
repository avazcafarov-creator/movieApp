//
//  HomeViewModel.swift
//  movieApp
//
//  Created by Avaz Cafarov on 18.09.26.
//

import Foundation

final class HomeViewModel {
    var items: [HomeModel] = []
    private let manager = CoreManager()
    
    var succes: (() -> Void)?
    var error: ((String) -> Void)?
    
    func getMovies() {
        getPopularMovies()
        getNowPlayingMovies()
        getUpcomingMovies()
        getTopRatedMovies()
    }
    
    private func getPopularMovies() {
        manager.request(model: Movie.self,
                        endpoint: .popularMovie) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Popular", movies: data.results ?? []))
                self.succes?()
            }
        }
    }
    
    private func getNowPlayingMovies() {
        manager.request(model: Movie.self,
                        endpoint: .nowPlayingMovie) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Now playing", movies: data.results ?? []))
                self.succes?()
            }
        }
    }
    
    private func getUpcomingMovies() {
        manager.request(model: Movie.self,
                        endpoint: .upcomingMovie) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Upcoming", movies: data.results ?? []))
                self.succes?()
            }
        }
    }
    
    private func getTopRatedMovies() {
        manager.request(model: Movie.self,
                        endpoint: .topRatedMovie) { data, errorMessage in
            if let errorMessage {
                self.error?(errorMessage)
            } else if let data {
                self.items.append(.init(title: "Top Rated", movies: data.results ?? []))
                self.succes?()
            }
        }
    }
}
