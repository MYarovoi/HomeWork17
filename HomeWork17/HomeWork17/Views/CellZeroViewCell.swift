//
//  CellZeroViewController.swift
//  HomeWork17
//
//  Created by Mykyta Yarovoi on 19.04.2024.
//

import UIKit

class CellZeroViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    
    func setup(with model: CellZeroDisplayModel) {
        
        title.text = model.title
    }
}
