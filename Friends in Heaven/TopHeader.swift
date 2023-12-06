//
//  TopHeader.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 12/6/23.
//

import SwiftUI

struct TopHeader: View {
    @State var settingsTapped = false
    
    var body: some View {
        SettingsButton(settingsTapped: $settingsTapped)
    }
}

#Preview {
    TopHeader()
}
