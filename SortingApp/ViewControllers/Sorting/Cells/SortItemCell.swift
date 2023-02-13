//
//  SortItemCell.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

class SortItemCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.label.font = .systemFont(ofSize: 25)
        
        self.backgroundColor = .lightGray
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.borderWidth = 1
    }

}
