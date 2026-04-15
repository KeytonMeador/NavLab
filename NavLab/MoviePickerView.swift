//
//  MoviePicker.swift
//  NavLab
//
//  Created by MEADOR, KEYTON A. on 4/15/26.
//

import SwiftUI

struct MoviePickerView: View {
    @Binding var movie: Movie
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        List(Movie.allCases) { movieOption in
            Button {
                movie = movieOption
                dismiss()
            } label: {
                HStack {
                    
                    Image(systemName: movieOption.symbol)
                        .font(.largeTitle)
                    Text(movieOption.rawValue.capitalized)
                        .font(.headline)
                        .padding(.leading)
                }
            }
        }
        .navigationTitle("Pick Your Movie")
    }
}

#Preview {
    NavigationStack {
        MoviePickerView(movie: .constant(.bolt))
    }
}
