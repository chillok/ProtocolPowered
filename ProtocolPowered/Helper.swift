//
//  Helper.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

class Helper {
    
    class func data() -> [Listable] {
        
        var array = [
            ListableSong(name: "Hysteria", artist: "Muse"),
            ListableMovie(title: "Tucker and Dale Vs Evil", genre: "Comedy"),
            ListableSong(name: "Feel Good Hit of the Summer", artist: "Queens of the Stone Age"),
            ListableSong(name: "Swords", artist: "MIA"),
            ListableMovie(title: "Interstellar", genre: "Sci-Fi"),
            ListableSong(name: "Mean Low Water", artist: "65daysofstatic"),
            ListableSong(name: "Methadone", artist: "Rise Against")] as [Listable]
        
        return array
    }
}