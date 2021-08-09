//
//  Trailer.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 07/08/21.
//

import Foundation

struct Trailer: Identifiable, Hashable{
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailImageURL: URL
    
}
