//
//  SectionAdapterInput.swift
//  HomeWork17
//
//  Created by Mykyta Yarovoi on 19.04.2024.
//

import UIKit

protocol SectionAdapterInput {
    
    func registerCells(in tableView: UITableView)
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView)
    
    func tableView(titleForHeaderInSection section: Int, in tableView: UITableView) -> String?
}

// MARK: - Default
extension SectionAdapterInput {
    
    func numberOfRows(for section: Int, in tableView: UITableView) -> Int {
        return 0
    }
    
    func cellForRow(at indexPath: IndexPath, in tableView: UITableView) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func heightForRow(at indexPath: IndexPath, in tableView: UITableView) -> CGFloat {
        return 44.0
    }
    
    func didSelectRow(at indexPath: IndexPath, in tableView: UITableView) {
        // do nothing
    }
}
