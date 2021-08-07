//
//  Movie.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumnailURL: URL
    
    var categories: [String]
    
    var year: Int
    var rating: String
    var numberOfSeason: Int?
    
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThisMovies: [Movie]
    
    var episodes: [Episode]?
    
    var promotionHeadline: String?
    
    var numberOfSeasonDisplay: String{
        if let num = numberOfSeason{
            if num == 1{
                return "1 season"
            }else{
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String{
        if let current = currentEpisode{
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        }else{
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    
    var episodeDescriptionDisplay : String{
        if let current = currentEpisode{
            return current.description
        }else{
            return defaultEpisodeInfo.description
        }
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
