//
//  Movies.swift
//  flixster
//
//  Created by Anderson David on 1/20/23.
//

import Foundation

struct MoviesResponse: Decodable {
    var results: [Movie]
    
    static func loadJson() -> [Movie] {
        if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(MoviesResponse.self, from: data)
                return jsonData.results
            } catch {
                print("error:\(error)")
            }
        }
        return []
    }
}

struct Movie: Decodable {
    var original_title: String
    var overview: String
    
    var poster_path: String // when loading image with Nuke, make sure you convert to url by prepending base url
    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
    
    var backdrop_path: String
    
    
    var vote_average: Double
    var vote_count: Int
    var popularity: Double
}

// api key: 5683cd489ecdcf1304b7af1cd4046db3
