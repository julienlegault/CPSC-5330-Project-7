//
//  Card.swift
//  Project 7
//
//  Created by Julien on 2/15/24.
//

import Foundation

struct Card {
    
    var name: String
    var cost: String
    var text: String
    
    init(_ name: String, _ cost: String, _ text: String) {
        self.name = name
        self.cost = cost
        self.text = text
    }
}
