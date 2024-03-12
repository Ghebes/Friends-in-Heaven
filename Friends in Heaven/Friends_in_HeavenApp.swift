//
//  Friends_in_HeavenApp.swift
//  Friends in Heaven
//
//  Created by Michael Ghebranious on 12/6/23.
//

import SwiftUI

@main
struct Friends_in_HeavenApp: App {
    ///Stars earned by the user
    @AppStorage("stars") var stars: Int = 0
    
    ///Saints mastered, meaning they have been completed 5 times perfectly without error
   // @AppStorage("mastered") var masteredSaints: [Int] = []
    
    var body: some Scene {
        WindowGroup {
            TabNavigation()
        }
    }
}
