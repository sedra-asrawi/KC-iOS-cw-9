//
//  MovieModel.swift
//  MovieApp
//
//  Created by Sedra Asrawi on 25/08/2022.
//

import Foundation

struct MovieModel : Identifiable {
    
     var id = UUID()
     var MovieName :String
     var MovieActress : [String]

}

var MovieCollection = [ MovieModel(MovieName: "harry potter", MovieActress: ["Daniel Radcliffe","Emma Watson","Rupert Grint","Richard Griffiths"]),
                      MovieModel(MovieName: "Enola Holmes", MovieActress: ["Millie","Louis Partridge","Henry Cavill"]),
                      MovieModel(MovieName: "Cruella", MovieActress: ["Emma Stone","Emma Thompson","Joel Fry","Paul Walter Hauser"])
                      
                      
                      ]
