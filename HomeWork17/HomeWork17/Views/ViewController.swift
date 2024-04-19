//
//  ViewController.swift
//  HomeWork17
//
//  Created by Mykyta Yarovoi on 19.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var tableAdapter: TableViewAdapterInput?
    
    var modeles: [CellZeroDisplayModel] = [CellZeroDisplayModel(title: "title 1"), CellZeroDisplayModel(title: "title 2")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let adapter = TableViewAdapter()
        
        let zeroSection = ZeroSectionAdapter(output: self)
        adapter.sections = [zeroSection]
        
        tableAdapter = adapter
        tableAdapter?.setup(with: tableView)
        
    }
}

extension ViewController: ZeroSectionAdapterOutput {
    
    func zeroItem(at indexPath: IndexPath) -> CellZeroDisplayModel {
        return modeles[indexPath.row]
    }
    
    func zeroItemsCount() -> Int {
        return modeles.count
    }
    
    
}
