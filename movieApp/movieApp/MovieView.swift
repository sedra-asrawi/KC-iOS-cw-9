//
//  MovieView.swift
//  MovieApp
//
//  Created by Sedra Asrawi on 25/08/2022.
//

import SwiftUI

struct MovieView: View {
    @State var movie : String
    var body: some View {
        HStack{
            Image(movie)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 80, height: 80)
            
            Text(movie)
                .font(.system(size: 20))
                .fontWeight(.light)
            
            Spacer()
            
            
            
        }
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: "")
    }
}
