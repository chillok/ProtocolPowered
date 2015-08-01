//
//  TableViewCell.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var iconImageView: UIImageView!
    
    func setData(data: Listable) {
        self.titleLabel.text = data.title()
        self.subtitleLabel.text = data.subtitle()
        self.backgroundImageView.image = data.backgroundImage()
        self.backgroundImageView.alpha = CGFloat(data.backgroundImageAlpha())
        self.iconImageView.image = data.icon()
        self.contentView.backgroundColor = data.backgroundColor()
    }
    
    class func identifier() -> String {
        return "TableViewCell"
    }
}