//
//  Actor.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import Foundation

// MARK: - Actor
struct Actor: Codable {
    let page: Int?
    let results: [ActorResult]?
    let totalPages: Int?
    let totalResults: Int?

    enum CodingKeys: String, CodingKey {
        case page = "page"
        case results = "results"
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

// MARK: - Result
struct ActorResult: Codable, TopImageBottomLabelProtocol {
    let adult: Bool?
    let gender: Int?
    let id: Int?
    let knownFor: [KnownFor]?
    let knownForDepartment: String?
    let name: String?
    let popularity: Double?
    let profilePath: String?
    
    var imagePath: String {
        return profilePath ?? ""
    }
    
    var labelText: String {
        return name ?? ""
    }

    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case gender = "gender"
        case id = "id"
        case knownFor = "known_for"
        case knownForDepartment = "known_for_department"
        case name = "name"
        case popularity = "popularity"
        case profilePath = "profile_path"
    }
}

// MARK: - KnownFor
struct KnownFor: Codable {
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let mediaType: String?
    let originalLanguage: String?
    let originalTitle: String?
    let overview: String?
    let posterPath: String?
    let releaseDate: String?
    let title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    let firstAirDate: String?
    let name: String?
    let originCountry: [String]?
    let originalName: String?

    enum CodingKeys: String, CodingKey {
        case adult = "adult"
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id = "id"
        case mediaType = "media_type"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview = "overview"
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title = "title"
        case video = "video"
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case firstAirDate = "first_air_date"
        case name = "name"
        case originCountry = "origin_country"
        case originalName = "original_name"
    }
}
