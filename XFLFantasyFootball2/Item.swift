//
//  Item.swift
//  XFLFantasyFootball2
//
//  Created by Kyle Morand on 3/27/20.
//  Copyright © 2020 Kyle Morand. All rights reserved.
//

import UIKit

class Item: NSObject {
    var name: String
    var seasonPoints: Int
    var position: String?
    let dateCreated:  Date
    
    init(name: String, position: String?, seasonPoints: Int){
        self.name = name
        self.seasonPoints = seasonPoints
        self.position  = position
        self.dateCreated = Date()
        
        super.init()
    }
    
    convenience init(random: Bool = false){
        if random {
            let adjectives  = ["Fluffy", "Rusty", "Shiny"]
            let nouns = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(adjectives.count))
            let randomAdjective = adjectives[Int(idx)]
            
            idx = arc4random_uniform(UInt32(nouns.count))
            let randomNoun = nouns[Int(idx)]
            
            let randomName = "\(randomAdjective) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, position: randomSerialNumber, seasonPoints: randomValue)
        } else{
            self.init(name: "", position: nil, seasonPoints: 0)
        }
    }
}
