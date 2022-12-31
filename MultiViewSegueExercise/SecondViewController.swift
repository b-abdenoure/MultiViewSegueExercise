//
//  SecondViewController.swift
//  MultiViewSegueExercise
//
//  Created by Abdenoure Boudlal on 11/28/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name: String = ""
    var score: Int = 0
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = "Congratulation, \(name), you've earned \(score) points!"
    }
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
