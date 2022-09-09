//
//  ContentView.swift
//  MainLine
//
//  Created by Nicholas Straub on 9/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.gray
            BoardView()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
