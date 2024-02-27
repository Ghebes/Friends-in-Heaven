//
//  ContentView.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 12/6/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            GeometryReader() {proxy in
                VStack(spacing: 0){
                    TopHeader(proxy: proxy)
                    VStack(spacing : proxy.size.height * 15 / 852){
                        NavigationLink{
                            GuessView(level: .easy)
                        }label: {
                            LevelDifficultyButton(difficulty: .easy, image: Image(systemName: "plus"), backgroundColor: .green, proxy: proxy)
                        }
                        
                        
                        
                        LevelDifficultyButton(difficulty: .medium, image: Image(systemName: "plus"), backgroundColor: .orange, proxy: proxy)
                        
                        LevelDifficultyButton(difficulty: .hard, image: Image(systemName: "plus"), backgroundColor: .red, proxy: proxy)
                        
                        LevelDifficultyButton(difficulty: .mixed, image: Image(systemName: "plus"), backgroundColor: .blue, proxy: proxy)
                        
                    }
                    .padding(.top, proxy.size.height * 20 / 852)
                }
                
                
            }
            .ignoresSafeArea(edges: .top)
            .background(.pageBackground)
        }
    }
}

#Preview {
    HomeView()
}
