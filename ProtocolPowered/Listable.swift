//
//  Listable.swift
//  ProtocolPowered
//
//  Created by Cillian O'Keeffe on 31/07/2015.
//  Copyright (c) 2015 Cillian O'Keeffe. All rights reserved.
//

import UIKit

protocol Listable {
    
    func title() -> String?
    func subtitle() -> String?
    func icon() -> UIImage?
    func backgroundImage() -> UIImage?
    func backgroundImageAlpha() -> Float
    func backgroundColor() -> UIColor
    func height() -> Float
}