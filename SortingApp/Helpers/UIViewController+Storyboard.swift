//
//  UIViewController+Storyboard.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

extension UIViewController {

    class func instantiate<T: UIViewController>(storyboard: Storyboard) -> T {
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        return storyboard.instantiateInitialViewController() as! T
    }
}
