//
//  ContentView.swift
//  MainLine
//
//  Created by Nicholas Straub on 9/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Color.gray
                BoardView()
            }
            .edgesIgnoringSafeArea(.all)
            Button {
//                DatabaseManager().getOpening(openingName: "LondonSystem")
            } label: {
                Text("Test API")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
