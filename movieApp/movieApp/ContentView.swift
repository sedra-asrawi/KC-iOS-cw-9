//
//  ContentView.swift
//  MovieApp
//
//  Created by Sedra Asrawi on 25/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        
        NavigationView {
            List {
                ForEach(MovieCollection){
                    movie in
                    
                    NavigationLink {
                        DetailsView(MovieDetails: movie)
                    } label: {
                        MovieView(movie: movie.MovieName)
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


