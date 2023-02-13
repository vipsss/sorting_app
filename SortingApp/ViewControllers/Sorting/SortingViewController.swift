//
//  SortingViewController.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

class SortingViewController: UIViewController {

    var viewModel: SortingViewModel?
//    var m = SortingLogic(list: [2,5,1,7,3])
    
    var logic: SortingLogic = SortingLogic(list: [])
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView.dataSource = self
        self.collectionView.registerCell(type: SortItemCell.self)
        self.collectionView.backgroundColor = .yellow
        
        let viewModel: SortingViewModel = SortingViewModel()
        self.renderViewModel(viewModel)
    }
    
    @IBAction func previousStep(_ sender: Any) {
        self.logic.previousIteration()
        
        let model = self.logic.generateViewModel()
        self.renderViewModel(model)
    }
    @IBAction func nextStep(_ sender: Any) {
        self.logic.nextIteration()
        
        let model = self.logic.generateViewModel()
        self.renderViewModel(model)
    }
    
    
    func renderViewModel(_ model: SortingViewModel) {
        self.viewModel = model
        self.collectionView.reloadData()
    }
}


extension SortingViewController: UICollectionViewDataSource  {
    func collectionView(_ collectionView: UICollectionView, numberOfSections section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel?.sortItems.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item: Int = self.viewModel?.sortItems[indexPath.item] ?? 0
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SortItemCell.identifier, for: indexPath) as! SortItemCell
        cell.label.text = "\(item)"
        
        cell.backgroundColor = .cyan
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.collectionView.frame.size.width, height: 200)
    }
}
