//
//  ContentView.swift
//  movieApp
//
//  Created by Sedra Asrawi on 24/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        NavigationView{
                
            List {
                    NavigationLink {
                        
                        MovieInfo(ourMovie: MovieModel(MovieName: <#T##String#>, MovieAct: <#T##[String]#>))
                        
                    } label: {
                        
                            ForEach (MyMovies) {
                                movie in
                                MyView(movie: movie.MovieName)
                            }
                        }

                }
                
            
            .navigationTitle("Movies")
            
        }


    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MyView: View {
    @State var Movie : String
    var body: some View {
        HStack{
            Image(Movie)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 120, height: 120)
            
            Text(Movie)
                .font(.system(size: 25))
                .fontWeight(.thin)
            
            
        }
    }
}
