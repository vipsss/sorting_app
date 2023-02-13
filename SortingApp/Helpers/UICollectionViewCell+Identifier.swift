//
//  UICollectionViewCell+Identifier.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

public extension UICollectionViewCell {
    
    static var identifier: String {
        return String(describing: self)
    }
    
}
