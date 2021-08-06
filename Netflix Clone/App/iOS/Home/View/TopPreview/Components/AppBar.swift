//
//  AppBar.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 03/01/21.
//

import SwiftUI

struct AppBar: View {
    
    
    
    var body: some View {
        
        HStack{
            Button(action: {
                
            }, label: {
                Image("original")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 56, height: 56)
            }).buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            }).buttonStyle(PlainButtonStyle())
            

            
            Spacer()
            
            
            Button(action: {
                
            }, label: {
                Text("Movies")
            }).buttonStyle(PlainButtonStyle())
            

            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Text("My List")
            }).buttonStyle(PlainButtonStyle())
            

            
            
        }.foregroundColor(.white)

    }
}

struct AppBar_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            AppBar()
        }
    }
}
