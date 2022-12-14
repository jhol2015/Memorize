//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Jhol Moreira on 24/10/22.
//

import SwiftUI


class EmojiMemoryGame {

    static let emojis = ["ð¢", "ð«", "ð", "ð", "ð¨", "ð¦", "ð¦", "ð¤", "ð", "ð½", "ðº", "ð"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in
            EmojiMemoryGame.emojis[pairIndex]
        }
    }
    //private set pode ver mais nÃ£o pode alterar.
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
}
