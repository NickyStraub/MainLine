//
//  DatabaseManager.swift
//  MainLine
//
//  Created by Nicholas Straub on 10/24/22.
//

import Foundation

class DatabaseManager {
    
    let baseUrl = "http://localhost:8000"
    
    func getOpening(name: String, completion: @escaping (Opening) -> Void) {
        let urlString = "\(baseUrl)/openings/\(name)"
        
        guard let url = URL(string: urlString) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil, (response as? HTTPURLResponse)?.statusCode == 200 else {
                print(error as Any, response as Any)
                return
            }
            
            do {
                let opening = try JSONDecoder().decode(Opening.self, from: data)
                completion(opening)
            } catch {
                print("JSON Error")
            }
        }
        task.resume()
    }
}
