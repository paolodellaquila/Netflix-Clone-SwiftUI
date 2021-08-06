//
//  Episode.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 06/08/21.
//

import Foundation
 
struct Episode: Identifiable {
    
    var id = UUID().uuidString
    
    var name: String
    var season: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL{
        return URL(string: thumbnailImageURLString)!
    }
}
