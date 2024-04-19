//
//  CellOneViewController.swift
//  HomeWork17
//
//  Created by Mykyta Yarovoi on 19.04.2024.
//

import UIKit

class CellOneViewCell: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    
    func setup(with model: CellOneDisplayModel) {
        
        label.text = model.title
        switcher.isOn = model.switcher
    }
}
