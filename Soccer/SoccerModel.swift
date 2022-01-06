//
//  SoccerModel.swift
//  Soccer
//
//  Created by ramy on 2022-01-05.
//

import Foundation

struct Games : Codable {
    var data : [match]
}

struct match : Codable , Identifiable{
    var id : Int
    var homeGoalCount : Int
    var awayGoalCount : Int
    var home_image : String
    var away_image : String
    var home_name : String
    var away_name : String
    
    #if DEBUG
    static let example = match(id: 5, homeGoalCount: 5, awayGoalCount: 5, home_image: "teams/england-liverpool-fc.png", away_image: "teams/england-norwich-city-fc.png" ,home_name: "LiverPool", away_name: "NorWich")
    #endif
}

