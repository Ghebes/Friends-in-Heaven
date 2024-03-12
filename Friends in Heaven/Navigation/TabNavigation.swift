//
//  TabNavigation.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 2/27/24.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case shop = "shop"
    case home = "home"
    case feedback = "feedback"
}
struct TabNavigation: View {
    @State var currentTab: Tab = .home
    
    
    var body: some View {
        ZStack{
                switch(currentTab){
                case .shop:
                    SettingsButton(settingsTapped: .constant(false))
                case .home:
                    HomeView()
                case .feedback:
                    SettingsButton(settingsTapped: .constant(true))
                
            }
            
            
            GeometryReader{proxy in
                VStack{
                    Spacer()
                    HStack(spacing: proxy.size.width * 90 / 393){
                        ForEach(Tab.allCases, id: \.rawValue){tab in
                            ZStack{
                                if(currentTab == tab){
                                    Circle()
                                        .fill(.pageBackground)
                                        .overlay{
                                            Circle()
                                                .stroke(Color.headerBackground, lineWidth: 4)
                                        }
                                        .offset(y: -8)
                                        .frame(width: 45, height: 45)
                                    
                                }
                                
                                Image(systemName: tabImage(tab: tab))
                                    .resizable()
                                    .frame(width: tab == .shop || tab == .home ? 28 : 20, height: 20)
                                    .foregroundStyle(currentTab == tab ? .headerBackground : .white)
                                    .offset(y: currentTab == tab ? -8 : 0)
                                    .onTapGesture{
                                        withAnimation(.spring()){
                                            currentTab = tab
                                        }
                                    }
                                
                            }
                        }
                    }
                    .frame(width: proxy.size.width, height: proxy.size.height * 40 / 852)
                    .background(.headerBackground)
                    
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

extension TabNavigation{
    ///Function that converts each tab name into its corresponding image
    func tabImage(tab: Tab) -> String{
        switch(tab){
        case .shop:
            return "giftcard.fill"
        case .home:
            return "gamecontroller.fill"
        case .feedback:
            return "pencil"
        }
    }
}
#Preview {
    TabNavigation()
}
