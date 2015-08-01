//
//  Models.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import Foundation

class Song: NSObject {
    
    var name: String?
    var artist: String?
    
    init(name: String?, artist: String?) {
        
        self.name = name
        self.artist = artist
    }
}

class Movie {
    
    var title: String?
    var genre: String?
    
    init(title: String, genre: String) {
        
        self.title = title
        self.genre = genre
    }
}