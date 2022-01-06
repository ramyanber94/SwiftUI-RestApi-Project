//
//  ApiService.swift
//  Soccer
//
//  Created by ramy on 2022-01-05.
//

import Foundation

class ApiServiceController {
    
    static var shared = ApiServiceController()
    
    func getAllLeagues(handler: @escaping ([match])-> ()){
        let urlString = "https://api.football-data-api.com/league-matches?key=test85g57&season_id=2012"
        guard let urlObj = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: urlObj) { (data , _ , _) in
            if let correct_data = data{
                do {
                    let resultFromDecoder = try? JSONDecoder().decode(Games.self ,from: correct_data)
                    DispatchQueue.main.async {
                        if let result = resultFromDecoder{
                            handler(result.data)
                        }
                    
                    }
                    
                }
            }
           
        }.resume()
    }
  
}
