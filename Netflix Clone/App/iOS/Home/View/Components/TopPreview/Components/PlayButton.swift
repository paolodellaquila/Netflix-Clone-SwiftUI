//
//  WhiteBUtton.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 03/01/21.
//

import SwiftUI

struct PlayButton: View {
    
    var text: String
    var imageName: String
    var backgroundColor: Color = Color.white
    
    
    var action: () -> Void
    
    
    var body: some View {
    
        Button(action: action, label: {
            HStack{
                
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                    .padding(.top, 8)
                    .padding(.bottom, 8)
                
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                
                Spacer()
            }
        })
        .foregroundColor(backgroundColor == .white ? .black : .white)
        .background(backgroundColor)
        .padding(.vertical,16)
    }
}

struct WhiteBUtton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            PlayButton(text: "Play", imageName: "play.fill", action: {
                
            })
        }
    }
}
