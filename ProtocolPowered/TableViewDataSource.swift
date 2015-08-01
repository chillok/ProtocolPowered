//
//  TableViewDataSource.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

class TableViewDataSource: NSObject, UITableViewDataSource {
    
    private var data: [Listable] = []
    
    func setData(data: [Listable], completion: () -> () = {} ) {
        
        self.data = data
        
        completion()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(TableViewCell.identifier(), forIndexPath: indexPath) as! TableViewCell
        
        cell.setData(data[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func itemForIndexPath(indexPath: NSIndexPath) -> Listable {
        return data[indexPath.row]
    }
}