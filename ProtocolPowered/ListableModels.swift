//
//  ListableModels.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

class ListableMovie: Movie, Listable {
    
    func title() -> String? {

        return title
    }
    
    func subtitle() -> String? {
        
        return genre
    }
    
    func icon() -> UIImage? {
        return nil
    }
    
    func backgroundImage() -> UIImage? {
        
        if let title = title() {
            return UIImage(named: title)
        }
        
        return nil
    }
    
    func backgroundImageAlpha() -> Float {
        return 0.2
    }
    
    func backgroundColor() -> UIColor {
        return UIColor(red:0.7, green:0.24, blue:0.53, alpha:1)
    }
    
    func height() -> Float {
        return 300
    }
}

class ListableSong: Song, Listable {
    
    func title() -> String? {
        
        return name
    }
    
    func subtitle() -> String? {
        
        return artist
    }
    
    func icon() -> UIImage? {
        return UIImage(named: "audio")
    }
    
    func backgroundImage() -> UIImage? {
        return nil
    }
    
    func backgroundImageAlpha() -> Float {
        return 1.0
    }
    
    func backgroundColor() -> UIColor {
        return UIColor(red:0.36, green:0.78, blue:1, alpha:1)
    }
    
    func height() -> Float {
        return 80
    }
}

