//
//  ViewController.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewDataSource: TableViewDataSource!
    @IBOutlet weak var tableViewDelegate: TableViewDelegate!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }
    
    func setupTableView() {
        
        tableViewDataSource.setData(Helper.data(), completion: { () -> () in
            self.tableView.reloadData()
        })
        
        tableViewDelegate.sizeForItemAtIndexPath = { (indexPath: NSIndexPath) -> Float in
            self.tableViewDataSource.itemForIndexPath(indexPath).height()
        }
    }
}

