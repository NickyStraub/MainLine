//
//  BoardView.swift
//  MainLine
//
//  Created by Nicholas Straub on 9/9/22.
//

import SwiftUI

struct BoardView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<8) { startingIndex in
                RowView(startingIndex: (startingIndex * 8))
            }
        }
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
