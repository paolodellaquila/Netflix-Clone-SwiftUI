//
//  GlobalHelper.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(id: UUID().uuidString, name: "DARK", thumnailURL: URL(string: "https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 1, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese", cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel")
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travelers", thumnailURL: URL(string: "https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"], year: 2020, rating: "TV-MA",  numberOfSeason: 2, defaultEpisodeInfo: exampleEpisodeInfo1,creators: "Baran bo Odan, Jantje Friese", cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel", promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumnailURL: URL(string: "https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"], year: 2020, rating: "TV-MA",  numberOfSeason: 3, defaultEpisodeInfo: exampleEpisodeInfo1,creators: "Baran bo Odan, Jantje Friese", cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel")
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Alone", thumnailURL: URL(string: "https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"], year: 2020, rating: "TV-MA",  numberOfSeason: 4, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese", cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel", promotionHeadline: "New episodes cooming soon")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Hannibal", thumnailURL: URL(string: "https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"], year: 2020, rating: "TV-MA", numberOfSeason: 5, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese", cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel")
let exampleMovie6 = Movie(id: UUID().uuidString, name: "After Life", thumnailURL: URL(string: "https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],year: 2020, rating: "TV-MA",  numberOfSeason: 6, defaultEpisodeInfo: exampleEpisodeInfo1, creators: "Baran bo Odan, Jantje Friese", cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel", promotionHeadline: "Watch Season 6 now")

var exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6,
]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings and Endings", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book", season: 2, episode: 1)

extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(95)]),
        startPoint: .top,
        endPoint: .bottom
    )
}

extension String {

    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }

    func heightOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.height
    }

    func sizeOfString(usingFont font: UIFont) -> CGSize {
        let fontAttributes = [NSAttributedString.Key.font: font]
        return self.size(withAttributes: fontAttributes)
    }
}
