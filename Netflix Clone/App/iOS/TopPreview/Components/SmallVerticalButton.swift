//
//  MyListButton.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 04/12/20.
//

import SwiftUI

struct SmallVerticalButton: View {
    
    var isOnImage: String
    var isOffImage: String
    var buttonImage: String {
    
        if (isOn){
            return isOnImage
        }else{
            return isOffImage
        }
    }
    
    var isOn: Bool
    var text: String
    
    var action: () -> Void
    
    var body: some View {
        
        Button(action: {
            action()
        }, label: {
            VStack{
                Image(systemName: buttonImage)
                    .foregroundColor(.white)
                
                Text(text)
                    .bold()
                    .foregroundColor(.white)
                    .font(.system(size: 14))
            }
        })
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            SmallVerticalButton(isOnImage: "checkmark",
                         isOffImage: "plus",
                         isOn: false,
                         text: "My List") {
                
            }
        }
    
    }
}
