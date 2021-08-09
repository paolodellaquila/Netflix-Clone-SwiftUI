//
//  MoreView.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 07/08/21.
//

import SwiftUI

struct MoreView: View {
    
    
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        
        LazyVGrid(columns: columns) {
            
            ForEach(0..<movies.count) {index in
                StandardHomeMovie(movie: movies[index])
            }
        }
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView(movies: exampleMovies)
    }
}
