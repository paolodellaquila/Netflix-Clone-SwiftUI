//
//  EpisodeView.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 07/08/21.
//

import SwiftUI

struct EpisodeView: View {
    
    var episodes: [Episode]
    
    // pointer to state variable of the main components
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    
    func getEpisode(forSeason season: Int) -> [Episode]{
        return episodes.filter{$0.season == selectedSeason}
    }
    
    var body: some View {
        VStack(spacing: 14){
            HStack{
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group{
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }.font(.system(size: 16))
                })
                
                Spacer()
            }
            
            
            ForEach(getEpisode(forSeason: selectedSeason)){ episode in
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading)  {
                            Text("\(episode.episodeNumber). \(episode.name)")
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }
                    
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
            }
            
            Spacer()
            
            
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            EpisodeView(episodes: [episode1,episode2,episode3], showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
