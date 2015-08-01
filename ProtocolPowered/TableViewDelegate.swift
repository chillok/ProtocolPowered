//
//  TableViewDelegate.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

class TableViewDelegate: NSObject, UITableViewDelegate {
    
    var sizeForItemAtIndexPath: ((indexPath: NSIndexPath) -> Float)?
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if let height = self.sizeForItemAtIndexPath?(indexPath: indexPath) {
            return CGFloat(height)
        }
        
        return 44
    }
}
