//
//  GameViewModel.swift
//  MainLine
//
//  Created by Nicholas Straub on 10/25/22.
//

import SwiftUI

class GameViewModel: ObservableObject {
    var databaseManager = DatabaseManager()
    @Published var opening: Opening?
    
    func getOpening(name: String) {
        databaseManager.getOpening(name: name) { opening in
            DispatchQueue.main.async {
                self.opening = opening
                print("recieved opening: \(opening)")
            }
        }
    }
    
    
}
