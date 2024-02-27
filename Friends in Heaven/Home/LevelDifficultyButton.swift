//
//  LevelDifficultyButton.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 2/25/24.
//

import SwiftUI

enum Levels: String{
    case easy = "easy"
    case medium = "medium"
    case hard = "hard"
    case mixed = "mixed"
}

enum Side{
    case left
    case right
}

/// Shape for the top background header for the whole application
struct Arc: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.minX, y: rect.minY))
        path.addLine(to: CGPoint(x: (rect.maxX / 2), y: rect.minY))
       
        
        return path
    }
    
    
}

struct LevelDifficultyButton: View {
    ///Variable denoting which difficulty the button is to display
    @State var difficulty: Levels = .easy
    
    ///Variable for the image to display on the button
    @State var image: Image = Image(systemName: "plus")
    
    ///Variable for the background color of the button
    @State var backgroundColor: Color = .green
    
    @State var proxy : GeometryProxy
    ///Computed property to determine which side of the screen the difficult show lie
    var side: Side{
        switch(difficulty){
        case .easy:
            return .left
        case .medium:
            return .right
        case .hard:
            return .left
        case .mixed:
            return .right
        }
    }
    
    var body: some View {
        HStack{
            if(side == .right){
                Spacer()
            }
            VStack(spacing: 2){
                HStack{
                    Text(difficulty.rawValue.uppercased())
                        .foregroundStyle(.white)
                        .font(.custom("ComicNeue-Regular", size: 18))
                    
                    Spacer()
                    
                    Arc()
                        .frame(width: proxy.size.width * 50/393, height: proxy.size.height * 50 / 852)
                    
                }
                .padding(.horizontal, proxy.size.width * 16 / 393)
                
                Spacer()
                HStack{
                    image
                        .resizable()
                        .frame(width: proxy.size.width * 50 / 393, height: proxy.size.height * 60 / 852)
                        .cornerRadius(5)
                }
                .padding(.bottom, proxy.size.height * 10 / 852)
            }
            .frame(width: proxy.size.width * 175/393, height: proxy.size.height * 130/852)
            .background(backgroundColor)
            .cornerRadius(20)
            
            if(side == .left){
                Spacer()
            }
        }
        .padding(side == .left ? .leading : .trailing , proxy.size.width * 20 / 393)
            
    }
}


 #Preview {
     GeometryReader{proxy in
         LevelDifficultyButton(proxy:proxy)
     }
     
 }

