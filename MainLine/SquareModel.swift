//
//  SquareModel.swift
//  MainLine
//
//  Created by Nicholas Straub on 9/9/22.
//

import Foundation
import SwiftUI

struct SquareModel {
    let color: Color
    let id: Int
    let sideLength: CGFloat
    var piece: Piece?
}

//struct Piece {
    enum Piece {
        case king, queen, rook, bishop, knight, pawn
        var image: Image? {
            switch self {
            case .king:
                return Image(systemName: "crown.fill")
            case .pawn:
                return Image(systemName: "person.fill")
            default:
                return nil
            }
        }
    }
//}
