//
//  SquareView.swift
//  MainLine
//
//  Created by Nicholas Straub on 9/9/22.
//

import SwiftUI

struct SquareView: View {
    // MARK: Constants
    enum Constants {
    }
    
    // MARK: Properties
    let model: SquareModel
    
    // MARK: View
    var body: some View {
        ZStack {
            let sideLength = model.sideLength
            Rectangle()
                .frame(width: sideLength, height: sideLength)
                .foregroundColor(model.color)
                .onTapGesture {
                    print(model.id)
                }
            model.piece?.image
                .foregroundColor(Color.gray)
        }
    }
}

struct SquareView_Previews: PreviewProvider {
    static var previews: some View {
        SquareView(model: SquareModel(color: Color.black, id: 0, sideLength: 50))
    }
}
