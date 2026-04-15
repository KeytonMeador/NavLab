//
//  ContentView.swift
//  moodyapp
//
//  Created by DURHAM, MASON A. on 4/15/26.
//

import SwiftUI

struct DashboardView: View {
    @State private var selectedMovie: movie = .bolt
    var body: some View {
        TabView {
            NavigationStack{
                
                VStack(spacing: 24) {
                    Text("Underated Disney Movies")
                        .font(.title2)
                    Image(systemName: selectedMovie.symbol)
                        .font(.system(size: 80))
                    Text(selectedMovie.message)
                        .font(.headline)
                        .foregroundColor(.gray)
                    
                    NavigationLink("Pick Your Movie") {
                        MoviePickerView(movie: selectedMovie)
                    }
                    .buttonStyle(.borderedProminent)
                    
                }
                .padding()
                .navigationTitle("Dashboard")
            }
            .tabItem {
                Label("Dashboard", systemImage: "house")
            }
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
        }
        .padding()
    }
}

#Preview {
    DashboardView()
}
