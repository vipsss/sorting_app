//
//  MainViewController.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

class MainViewController: ViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO: add texts for labels from ViewModel

        self.textView.layer.borderWidth = 1
        self.textView.layer.borderColor = UIColor.lightGray.cgColor
        self.textView.layer.cornerRadius = 10
        
        self.textView.text = "3,5,1,2,9"
    }
    
    private func prepareInputList(text: String) -> [Int] {
        let t = text.replacingOccurrences(of: " ", with: "")
        let items = t.components(separatedBy: ",")
        
        var result: [Int] = []
        for i in items {
            result.append(Int(i) ?? 0)
        }
        
        return result
    }
    
    
    @IBAction func startSortingAction(_ sender: Any) {
        
        let list = self.prepareInputList(text: self.textView.text)

        let logic = SortingLogic(list: list)
        
        let vc: SortingViewController = SortingViewController.instantiate(storyboard: .sorting)
        vc.logic = logic
        self.present(vc, animated: true)
    }
}
