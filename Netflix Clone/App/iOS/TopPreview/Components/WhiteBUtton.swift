//
//  WhiteBUtton.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 03/01/21.
//

import SwiftUI

struct WhiteBUtton: View {
    
    var text: String
    var imageName: String
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
        .background(Color.white)
        .foregroundColor(Color.black)
        .padding(.vertical,16)
    }
}

struct WhiteBUtton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            WhiteBUtton(text: "Play", imageName: "play.fill", action: {
                
            })
        }
    }
}
