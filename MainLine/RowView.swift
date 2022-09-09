//
//  RowView.swift
//  MainLine
//
//  Created by Nicholas Straub on 9/9/22.
//

import SwiftUI

struct RowView: View {
    let startingIndex: Int
    let evenRowIndexes = [0, 16, 32, 48]
    var body: some View {
        HStack(spacing: 0) {
            ForEach(startingIndex ..< (startingIndex + 8)) { id in
                if  evenRowIndexes.contains(startingIndex) {
                    SquareView(model: SquareModel(color: id % 2 == 0 ? .black : .white, id: id, sideLength: UIScreen.main.bounds.width / 8))
                } else {
                    SquareView(model: SquareModel(color: id % 2 != 0 ? .black : .white, id: id, sideLength: UIScreen.main.bounds.width / 8, piece: .king))
                }
            }
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(startingIndex: 0)
    }
}
