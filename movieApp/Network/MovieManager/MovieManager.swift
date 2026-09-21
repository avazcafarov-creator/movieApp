//
//  HomeManager.swift
//  movieApp
//
//  Created by Avaz Cafarov on 21.09.26.
//

import Foundation

class MovieManager {
    let manager = CoreManager()
    
    func getMovies(completion: @escaping ([HomeModel]?, String?) -> Void) {
        var items: [HomeModel] = []
        getPopularMovies { data, error in
            if let data { items.append(.init(title: "Popular", movies: data.results ?? [])) }
            completion(items, error)
        }
        
        getNowPlayingMovies { data, error in
            if let data { items.append(.init(title: "Now Playing", movies: data.results ?? [])) }
            completion(items, error)
        }
        
        getTopRatedMovies { data, error in
            if let data { items.append(.init(title: "Top Rated", movies: data.results ?? [])) }
            completion(items, error)
        }
        
        getUpcomingMovies { data, error in
            if let data { items.append(.init(title: "Upcoming", movies: data.results ?? [])) }
            completion(items, error)
        }
    }
    
    private func getPopularMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.popularMovie.rawValue,
                        completion: completion)
    }
    
    private func getNowPlayingMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.nowPlayingMovie.rawValue,
                        completion: completion)
    }
    
    private func getUpcomingMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.upcomingMovie.rawValue,
                        completion: completion)
    }
    
    private func getTopRatedMovies(completion: @escaping (Movie?, String?) -> Void) {
        manager.request(model: Movie.self,
                        endpoint: MovieEndpoint.topRatedMovie.rawValue,
                        completion: completion)
    }
}
