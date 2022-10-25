//
//  MemoryGame.swift
//  Memorize
//
//  Created by Jhol Moreira on 24/10/22.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(_ card: Card) {
        
    }
    
    init(numberOfPairsOfCards: Int, createCardContent: (Int) -> CardContent) {
        cards = Array<Card>()
        //add numberOfPairsOfCards x 2 cards to cards array
        
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = createCardContent(pairIndex)
            cards.append(Card(isFaceUp: <#T##Bool#>, isMatched: <#T##Bool#>, content: content))
            cards.append(Card(isFaceUp: <#T##Bool#>, isMatched: <#T##Bool#>, content: content))
        }
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
