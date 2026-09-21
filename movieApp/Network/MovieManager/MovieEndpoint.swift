//
//  HomeEndpoint.swift
//  movieApp
//
//  Created by Avaz Cafarov on 21.09.26.
//

import Foundation

enum MovieEndpoint: String {
    case popularMovie = "/movie/popular"
    case nowPlayingMovie = "/movie/now_playing"
    case upcomingMovie = "/movie/upcoming"
    case topRatedMovie = "/movie/top_rated"
}
