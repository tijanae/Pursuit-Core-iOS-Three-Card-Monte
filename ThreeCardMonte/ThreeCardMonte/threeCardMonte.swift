//
//  threeCardMonte.swift
//  ThreeCardMonte
//
//  Created by Tia Lendor on 8/11/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

struct CardStatus {
    
    var card1 = 0
    var card2 = 0
    var card3 = 0
    
    mutating func randomizedCards( ) {
        let generator = 0..<3
        let shuffledGenerator = generator.shuffled()
        print(shuffledGenerator)
        card1 = shuffledGenerator[0]
        card2 = shuffledGenerator[1]
        card3 = shuffledGenerator[2]
        print(card1)
        print(card2)
        print(card3)
        // we need to get the images to change 
    }
    
    
}


