//
//  HomeVM.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import Foundation

class HomeVM: ObservableObject {
    
    //String == Category
    var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        return movies.keys.map({ String($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie]{
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Scifi"] = exampleMovies.shuffled()
    }
}
