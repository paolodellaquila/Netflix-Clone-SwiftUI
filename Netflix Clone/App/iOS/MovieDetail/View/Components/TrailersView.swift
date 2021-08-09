//
//  TrailersView.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 07/08/21.
//

import SwiftUI

struct TrailersView: View {
    
    var trailers: [Trailer]
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        ScrollView {
            
            LazyVStack(alignment: .leading){
                ForEach(trailers){ trailer in
                    VStack {
                        
                        VideoPreviewImage(imageURL: trailer.thumbnailImageURL, videoURL: trailer.videoURL)
                            .frame(maxWidth: screen.width)
                        
                        Text(trailer.name)
                            .font(.headline)
                    }
                    .foregroundColor(.white)
                    .padding(.bottom, 10)
                }
            }
        }
    }
}

struct TrailersView_Previews: PreviewProvider {
    static var previews: some View {
        TrailersView(trailers: exampleTrailers)
    }
}
