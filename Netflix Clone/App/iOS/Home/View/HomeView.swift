//
//  HomeView.swift
//  Netflix Clone
//
//  Created by Francesco Paolo Dellaquila on 28/11/20.
//

import SwiftUI

struct HomeView: View {
    
    //Home view model
    var homeViewModel = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    //Design
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            //main vstack
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                LazyVStack {
                     
                    AppBar()
                        .padding(.leading, 10)
                        .padding(.trailing, 30)
                    
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -120)
                        .zIndex(-1)

                    ForEach(homeViewModel.allCategories, id: \.self) { category in
                        VStack{
                            HStack{
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(homeViewModel.getMovie(forCat: category)){ movie in
                                        
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 200)
                                            .padding(.horizontal, 20)
                                            .onTapGesture {
                                                movieDetailToShow = movie
                                            }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            if movieDetailToShow != nil{
                
                //navigate to other custom screen
                MovieDetail(movie: movieDetailToShow!, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 12 Pro Max")
    }
}
