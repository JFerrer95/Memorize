//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jonathan Ferrer on 8/22/21.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    static let emojis = ["📞","📷","📎","🔒","🔭", "🛍", "📙","🚯", "🥬", "🥞", "🍕", "🥨", "🧀", "⚽️", "🏓", "🥎", "⛸", "🎸", "🎹", "🎺", "🚓", "🚜", "⛱", "🎢"]

    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 7) { pairIndex in
            emojis[pairIndex]
        }
    }


    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }

    // MARK - Intent(s)

    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
