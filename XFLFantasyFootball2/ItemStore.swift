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
        createItemSpecific(name:"hi", serialNumber: "Hi", valueInDollars: 10)
    }
    
    var allItems = [Item]()
    
    @discardableResult func createItemSpecific(name: String, serialNumber: String?, valueInDollars: Int) -> Item {
        let newItem = Item(name: name, serialNumber: serialNumber, valueInDollars: valueInDollars)
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
