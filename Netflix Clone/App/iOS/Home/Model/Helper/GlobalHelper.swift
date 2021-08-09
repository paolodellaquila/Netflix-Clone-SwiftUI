//
//  GlobalHelper.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import Foundation
import SwiftUI


let exampleVideoURL = URL(string: "https://www.rmp-streaming.com/media/big-buck-bunny-360p.mp4")!

let exampleImageURL1 = URL(string: "https://picsum.photos/200/300")!
let exampleImageURL2 = URL(string: "https://picsum.photos/200/300")!
let exampleImageURL3 = URL(string: "https://picsum.photos/200/300")!

let exampleTrailer1 = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomImageURL)
let exampleTrailer2 = Trailer(name: "The Hero's journey", videoURL: exampleVideoURL, thumbnailImageURL: randomImageURL)
let exampleTrailer3 = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomImageURL)

var randomImageURL: URL{
    return [exampleImageURL1,exampleImageURL2,exampleImageURL3].randomElement() ?? exampleImageURL1
}

var exampleTrailers: [Trailer]{
    return [exampleTrailer1,exampleTrailer2,exampleTrailer3]
}

let episode1 = Episode(
    name: "Beginnings and Endings",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/120/70",
    description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    length: 53,
    videoURL: exampleVideoURL)

let episode2 = Episode(
    name: "Dark Matter",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/120/71",
    description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    length: 53,
    videoURL: exampleVideoURL)

let episode3 = Episode(
    name: "Ghosts",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/120/72",
    description: "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    length: 53,
    videoURL: exampleVideoURL)

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeason: 1,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel",
    moreLikeThisMovies: [exampleMovie2,exampleMovie3,exampleMovie4,exampleMovie5,exampleMovie6].shuffled(),
    episodes: [episode1, episode2, episode3],
    trailers: exampleTrailers)

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumnailURL: URL(string: "https://picsum.photo/200/301")!,
    categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeason: 2,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel",
    moreLikeThisMovies: [],
    episodes: [episode1, episode2, episode3], promotionHeadline: "Best Rated Show",
    trailers: exampleTrailers)


let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeason: 3,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel",
    moreLikeThisMovies: [],
    episodes: [episode1, episode2, episode3],
    trailers: exampleTrailers)


let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeason: 4,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel",
    moreLikeThisMovies: [],
    episodes: [episode1, episode2, episode3], promotionHeadline: "New episodes cooming soon",
    trailers: exampleTrailers)


let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeason: 5,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel",
    moreLikeThisMovies: [],
    episodes: [episode1, episode2, episode3],
    trailers: exampleTrailers)


let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Supersful","Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    numberOfSeason: 6,
    defaultEpisodeInfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Louis Hoffmna, Olivw Mascucci, Jordis Triebel",
    moreLikeThisMovies: [],
    episodes: [episode1, episode2, episode3], promotionHeadline: "Watch Season 6 now",
    trailers: exampleTrailers)

var exampleMovies: [Movie] =
    [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6
    ].shuffled()

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
