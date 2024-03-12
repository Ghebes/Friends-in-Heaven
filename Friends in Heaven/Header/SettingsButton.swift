//
//  SettingsButton.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 12/6/23.
//

import SwiftUI


struct SettingsButton: View {
    
    ///Binding variable that determines whether settings has been tapped or not
    @Binding var settingsTapped: Bool
    
    var body: some View {
            Ellipse()
            .fill(settingsTapped ? .headerBackground : .settingsOrange)
                .frame(width: 50, height: 47)
                .overlay{
                    Ellipse()
                        .fill(settingsTapped ? .black : .settingslightOrange)
                        .frame(width: 50, height: 47)
                        .offset(x: 0, y: -1)
                        .overlay{
                            Ellipse()
                                .fill(settingsTapped ? .black: .settingsYellow)
                                .frame(width: 50, height: 47)
                                .offset(x: 0, y: -2)
                                .overlay{
                                    ZStack{
                                        if(!settingsTapped){
                                            Text("")
                                                .frame(width: 7, height: 3)
                                                .background(.white)
                                                .cornerRadius(30)
                                                .rotationEffect(.degrees(-60))
                                                .position(x: 11, y: 12.2)
                                        }
                                        Image(systemName: settingsTapped ? "xmark" : "gearshape.fill")
                                            .resizable()
                                            .frame(width: 20, height: 20)
                                            .foregroundStyle(.white)
                                            .offset(x:0, y: -2)
                                    }
                                }
                        }
                }
                .shadow(radius: 2, y: 2)
                .onTapGesture {
                    settingsTapped.toggle()
                    
                }
    }
}


#Preview {
    SettingsButton(settingsTapped: .constant(false))
}
