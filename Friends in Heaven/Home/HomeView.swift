//
//  ContentView.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 12/6/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader() {proxy in
            TopHeader()
        }
        .background(.pageBackground)
    }
}

#Preview {
    HomeView()
}
