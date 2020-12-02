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
}
