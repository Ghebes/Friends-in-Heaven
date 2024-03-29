//
//  TopHeader.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 12/6/23.
//

import SwiftUI

struct TopHeader: View {
    ///Stars earned by the users
    @AppStorage("stars") var stars: Int = 0
    
    ///Change the settings background design based on whether or not it has been tapped
    @State var settingsTapped = false
    
    ///Variable that sees if an image is being used instead of the main text
    @State var hasImage: Bool = false
    
    ///Variable that holds the image IF there is one
    @State var saintImage: Image = Image(systemName: "plus")
    
    @State var proxy: GeometryProxy
    var body: some View {
            
            ZStack{
                BackgroundShape()
                    .fill(.headerBackground)
                    .frame(width: proxy.size.width, height: proxy.size.height * 248 / 852)
                
                VStack{
                    HStack{
                        SettingsButton(settingsTapped: $settingsTapped)
                        Spacer()
                        
                        HStack{
                            Text(String(stars))
                                .foregroundStyle(.white)
                                .font(.custom("ComicNeue-Regular", size: 30))
                                
                            
                            Image(systemName: "star.fill")
                                .resizable()
                                .foregroundStyle(.settingsYellow)
                                .frame(width: 22, height: 22)
                                .overlay{
                                    Image(systemName: "star")
                                        .resizable()
                                        .frame(width: 23, height: 23)
                                        .foregroundColor(.black)
                                }
                                .rotationEffect(.degrees(52.2))
                        }
                        .frame(alignment: .top)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 50)
                    
                    
                    HStack{
                        Text("Friends in Heaven")
                            .foregroundStyle(.white)
                            .font(.custom("ComicNeue-BOLD", size: 40))
                        
                    }
                    .padding(.bottom, proxy.size.height * 5/852)
                    
                }
                .ignoresSafeArea(edges: .top)
                
                
            }
            .frame(width: proxy.size.width, height: proxy.size.height * 200/852)
            
            
        
    }
}

/// Shape for the top background header for the whole application
struct BackgroundShape: Shape{
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        //draw lines of path
        path.move(to: CGPoint(x:0, y:0))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addQuadCurve(
            to: CGPoint(x: 250, y: rect.maxY),
            control: CGPoint(x: 105, y: rect.minY + 160))
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX, y: rect.maxY ),
            control: CGPoint(x: 250 + (rect.maxX - 250) / 2, y: rect.maxY + 30))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
    
    
}


#Preview {
    GeometryReader{proxy in
        TopHeader(proxy: proxy)
    }
    
}
