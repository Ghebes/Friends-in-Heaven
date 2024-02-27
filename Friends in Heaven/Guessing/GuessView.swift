//
//  GuessView.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 2/27/24.
//

import SwiftUI

struct GuessView: View {
    @State var level: Levels
    var body: some View {
        Text(level.rawValue)
    }
}

#Preview {
    GuessView(level: Levels.easy)
}
