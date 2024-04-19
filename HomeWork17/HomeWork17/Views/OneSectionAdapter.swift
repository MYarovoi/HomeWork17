//
//  OneSectionAdapter.swift
//  HomeWork17
//
//  Created by Mykyta Yarovoi on 19.04.2024.
//

import UIKit

protocol OneSectionAdapterOutput: AnyObject {
    
    func oneItem(at indexPath: IndexPath) -> CellOneDisplayModel
    func oneItemsCount() -> Int
}

class OneSectionAdapter {
    
    private weak var output: OneSectionAdapterOutput!
    
    required init(output: OneSectionAdapterOutput) {
        self.output = output
    }
}

extension OneSectionAdapter: SectionAdapterInput {
    
    func registerCells(in tableView: UITableView) {
        
        let nib = UINib(nibName: "CellOne", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "CellOne")
    }
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return output.oneItemsCount()
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellOne", for: indexPath) as? CellOneViewCell
        else {
            assertionFailure()
            return UITableViewCell()
        }
        
        let model = output.oneItem(at: indexPath)
        cell.setup(with: model)
        
        return cell
    }
}
