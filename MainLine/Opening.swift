//
//  Opening.swift
//  MainLine
//
//  Created by Nicholas Straub on 10/24/22.
//

import SwiftUI

struct Move: Codable {
    var startSquare: Int
    var endSquare: Int
    var description: String
}

struct Opening: Codable {
    var name: String
    var moves: [Move]
    
    static let defaultOpening = Opening(name: "Test", moves: [Move(startSquare: 1, endSquare: 1, description: "testMove")])
}
