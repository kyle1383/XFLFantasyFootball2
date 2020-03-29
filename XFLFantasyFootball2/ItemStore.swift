//
//  ItemStore.swift
//  XFLFantasyFootball2
//
//  Created by Kyle Morand on 3/27/20.
//  Copyright © 2020 Kyle Morand. All rights reserved.
//

import UIKit

class ItemStore {
    init(){
        createItemSpecific(name:"P.J Walker", position: "QB", seasonPoints: 115)
        createItemSpecific(name:"Darnell Pumphrey", position: "RB", seasonPoints: 185)
        createItemSpecific(name:"Cardale Jones", position: "QB", seasonPoints: 97)
        createItemSpecific(name:"Rashad Ross", position: "WR", seasonPoints: 106)
        createItemSpecific(name:"Nick Truesdell", position: "TE", seasonPoints: 52)
    }
    
    var allItems = [Item]()
    
    @discardableResult func createItemSpecific(name: String, position: String?, seasonPoints: Int) -> Item {
        let newItem = Item(name: name, position: position, seasonPoints: seasonPoints)
        allItems.append(newItem)
        return newItem
    }
    @discardableResult func createItemRandom() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(_ item: Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItem(from fromIndex: Int, to toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        let movedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        allItems.insert(movedItem, at: toIndex)
    }
    
   
}
