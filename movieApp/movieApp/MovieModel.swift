//
//  MovieModel.swift
//  movieApp
//
//  Created by Sedra Asrawi on 24/08/2022.
//

import Foundation

struct MovieModel : Identifiable {
    
    let id = UUID()
    var MovieName : String
    var MovieAct : [String]
    
    
}

var MyMovies = [MovieModel(MovieName: "harry potter", MovieAct: ["Daniel"]),
                MovieModel(MovieName: "enola holmes", MovieAct: ["Millie"]),
                MovieModel(MovieName: "cruella", MovieAct: ["Emma"])
                ]
