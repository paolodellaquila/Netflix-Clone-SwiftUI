//
//  ContentView.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import SwiftUI
import AVKit

struct SplashIntro: View {

    let screen = UIScreen.main.bounds
    
    @State private var endSplash = false
    
    func delayNavigation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
            
            endSplash = true
        }
    }
    
    var body: some View {
        
        ZStack{
            VStack{
                
                if(!endSplash){
                    LoopingPlayer()
                        .frame(maxWidth: screen.width)
                        .edgesIgnoringSafeArea(.all)
                        .onAppear(){
                            delayNavigation()
                        }
                }
     
            }
            
            if(endSplash){
                HomeView()
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }

    }
}

struct SplashIntro_Previews: PreviewProvider {
    static var previews: some View {
        SplashIntro()
            .previewDevice("iPhone 12 Pro Max")
    }
}
