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

        print("mmmmm")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func startSortingAction(_ sender: Any) {
        let vc: SortingViewController = SortingViewController.instantiate(storyboard: .sorting)
        self.present(vc, animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
