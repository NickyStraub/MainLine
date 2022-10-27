//
//  GameVC.swift
//  MainLine
//
//  Created by Nicholas Straub on 10/25/22.
//

import SwiftUI

struct GameVC: View {
    
    @StateObject var viewModel = GameViewModel()
    
    var body: some View {
        VStack {
            ZStack {
                Color.gray
                BoardView()
            }
            .edgesIgnoringSafeArea(.all)
            Button {
                viewModel.getOpening(name: "London System")
            } label: {
                Text("Test API")
            }
        }
    }
}

struct GameVC_Previews: PreviewProvider {
    static var previews: some View {
        GameVC()
    }
}
