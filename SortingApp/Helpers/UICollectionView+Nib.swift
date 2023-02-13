//
//  UICollectionView.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

extension UICollectionView {
    
    func registerCell(type: UICollectionViewCell.Type, identifier: String? = nil) {
        register(UINib(nibName: type.identifier, bundle: .main), forCellWithReuseIdentifier: identifier ?? type.identifier)
    }
}
