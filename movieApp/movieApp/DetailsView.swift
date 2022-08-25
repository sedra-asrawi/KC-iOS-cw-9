//
//  DetailsView.swift
//  MovieApp
//
//  Created by Sedra Asrawi on 25/08/2022.
//

import SwiftUI

struct DetailsView: View {
    var MovieDetails : MovieModel
    
    var body: some View {
        
        ZStack{
            
            Image(MovieDetails.MovieName)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .blur(radius: 30)
                
            
            VStack{
                
                ZStack {
                    Circle()
                        .fill(.white)
                        .frame(width: 140, height: 140)
                    
                    Image(MovieDetails.MovieName)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                    .frame(width: 200, height: 200)
                }
                    
                
                Text(MovieDetails.MovieName)
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                
                
                Spacer()
                
                HStack {
                    ScrollView(.horizontal){
                        
                        HStack{
                                
                                ForEach(MovieDetails.MovieActress, id: \.self) {
                                    act in
                                    
                                    
                                        VStack{
                                            Image(act)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 100, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 100))
                                            
                                        
                                        
                                        Text(act)
                                            .foregroundColor(.white)
                                            .font(.system(size: 20))
                                            .fontWeight(.thin)
                                    }
                                    
                                    
                                    
                                 
                            }
                        
                    }
                        
                    }.frame(width: 350)
                }
                
                
                Spacer()
                
            }.padding()
        }
        
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(MovieDetails: MovieModel(MovieName: "harry potter", MovieActress: [""]))
    }
}
