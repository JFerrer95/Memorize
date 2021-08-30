//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Jonathan Ferrer on 8/17/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
