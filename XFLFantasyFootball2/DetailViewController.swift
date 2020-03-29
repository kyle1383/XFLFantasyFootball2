//
//  DetailViewController.swift
//  XFLFantasyFootball2
//
//  Created by Kyle Morand on 3/28/20.
//  Copyright © 2020 Kyle Morand. All rights reserved.
//

import UIKit
class DetailViewController: UIViewController {

    @IBOutlet var nameField: UITextField!
    @IBOutlet var serialField: UITextField!
    @IBOutlet var valueField: UITextField!
    @IBOutlet var dateField: UILabel!
    
    var item: Item!
    
    let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        return formatter
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameField.text = item.name
        serialField.text = item.position
        valueField.text = numberFormatter.string(from: NSNumber(value: item.seasonPoints))
        dateField.text = dateFormatter.string(from: item.dateCreated)
     }
     
     
}
