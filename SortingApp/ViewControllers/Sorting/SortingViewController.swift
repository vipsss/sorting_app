//
//  SortingViewController.swift
//  SortingApp
//
//  Created by Mac User on 13.02.2023.
//

import UIKit

class SortingViewController: UIViewController {

    var m = SortingModel(list: [2,5,1,7,3])
    
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func previousStep(_ sender: Any) {
        m.previousIteration()
    }
    @IBAction func nextStep(_ sender: Any) {
        m.nextIteration()
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
