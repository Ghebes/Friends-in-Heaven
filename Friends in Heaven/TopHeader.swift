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
    
    var body: some View {
        ZStack{
            BackgroundShape()
                .fill(.headerBackground)
                .frame(width: 400, height: 200, alignment: .top)
            VStack{
                HStack{
                    SettingsButton(settingsTapped: $settingsTapped)
                        .frame(alignment: .topLeading)
                    
                    Spacer()
                    HStack{
                        Text(String(stars))
                            .foregroundStyle(.white)
                        
                        
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .foregroundStyle(.black)
                            .overlay{
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .foregroundStyle(.settingsYellow)
                                    .frame(width: 19, height: 19)
                            }
                            .rotationEffect(.degrees(340))

                    }
                }
                .padding(.horizontal, 25.43)
                
                Spacer()
                
                HStack{
                    Text("Friends in Heaven")
                        .foregroundStyle(.white)
                    
                }
            }
            .padding(.top, 12)
            .padding(.bottom, 50)
            
        }
        .frame(width: 400, height: 200)
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
            to: CGPoint(x: 290, y: rect.maxY),
            control: CGPoint(x: 145, y: rect.minY + 120))
        path.addQuadCurve(
            to: CGPoint(x: rect.maxX, y: rect.maxY ),
            control: CGPoint(x: 350 + ((rect.maxX - 300) / 2), y: rect.maxY + 70))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.minY))
        
        return path
    }
    
    
}


#Preview {
    TopHeader()
}
