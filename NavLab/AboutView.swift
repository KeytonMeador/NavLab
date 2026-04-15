//
//  AboutView.swift
//  NavLab
//
//  Created by HOOVER, LOGAN on 4/15/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Image(systemName: "movieclapper")
                Text("An Experience Created by MovieGroup")
                Divider()
                Text("An App used for finding forgotten Disney movies to watch!")
                    .padding()
                Divider()
                Text("Keyton - Movies/Picker")
                Text("Hoover - About")
                Text("Mason - Dashboard")
            }
            .padding()
        }
        .navigationTitle("About")
    }
}
#Preview {
    AboutView()
}
