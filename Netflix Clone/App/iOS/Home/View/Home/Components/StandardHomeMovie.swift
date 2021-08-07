//
//  StandardHomeMovie.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import SwiftUI
import struct Kingfisher.KFImage

struct StandardHomeMovie: View {
    
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovie1)
            
    }
}
