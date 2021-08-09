//
//  CustomTabSwitcher.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 06/08/21.
//

import SwiftUI

struct CustomTabSwitcher: View {
    
    //1. immutable variable
    //2. state variable to keep refresh of UI
    @State private var currentTab: CustomTab = .episode
    
    
    //external variable
    var tabs: [CustomTab]

    var movie: Movie
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    
    func widthForTab(tab: CustomTab) -> CGFloat {
        return tab.rawValue.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
    
    var body: some View {
        
        VStack{
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            
                            //red bar
                            Rectangle()
                                .frame(width: widthForTab(tab: tab), height: 6)
                                .foregroundColor(tab == currentTab ? Color.red : Color.clear)
                            
                            //button
                            Button(action: {
                                
                                currentTab = tab
                                
                            }, label: {
                                
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? Color.white : Color.gray)
                                
                            })
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: widthForTab(tab: tab), height: 30)
                            
                            
                        }
                    }
                }
            }
            
            switch currentTab{
            case .episode:
                EpisodeView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailersView(trailers: movie.trailers)
            case .more:
                MoreView(movies: movie.moreLikeThisMovies)
            }
            
        }.foregroundColor(.white)
    }
}

enum CustomTab: String{
    case episode = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            CustomTabSwitcher(tabs: [.episode, .trailers, .more], movie: exampleMovie1, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
        

    }
}
