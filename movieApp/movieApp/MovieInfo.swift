//
//  MovieInfo.swift
//  movieApp
//
//  Created by Sedra Asrawi on 24/08/2022.
//

import SwiftUI

struct MovieInfo: View {
    var ourMovie : MovieModel
    var body: some View {
        ZStack {
            
            Image(ourMovie.MovieName)
                .blur(radius: 20)
            
            VStack{
                
                Image(ourMovie.MovieName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 250, height: 250)
                Text(ourMovie.MovieName)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                ScrollView(.horizontal){
                    
                    HStack{
                        
                        ForEach(ourMovie.MovieAct, id: \.self){
                            act in
                            
                            VStack{
                                Text(act)
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                
                                
                                Image(act)
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 250, height: 250)
                                
                            }
                            
                        }
                    }
                    
                }
                
            }
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(ourMovie: MovieModel(MovieName: "harry potter", MovieAct: ["Danial"]))
    }
}
