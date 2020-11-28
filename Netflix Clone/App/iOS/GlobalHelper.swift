//
//  GlobalHelper.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import Foundation


let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumnailURL: URL(string: "https://picsum.photos/200/300")!)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumnailURL: URL(string: "https://picsum.photos/200/301")!)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumnailURL: URL(string: "https://picsum.photos/200/302")!)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumnailURL: URL(string: "https://picsum.photos/200/303")!)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumnailURL: URL(string: "https://picsum.photos/200/304")!)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumnailURL: URL(string: "https://picsum.photos/200/305")!)

var exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6,
]
