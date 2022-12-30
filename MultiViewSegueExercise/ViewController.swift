//
//  ViewController.swift
//  MultiViewSegueExercise
//
//  Created by Abdenoure Boudlal on 11/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel!.text == "Yes" {
            score = 10
        } else{
            score = -10
        }
    }
    
    @IBAction func getResultScreenPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "secondView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondView" {
            let  destinationVC = segue.destination as! SecondViewController
            if let name = textField.text{
                destinationVC.name = name
                destinationVC.score = score
            }
//            destinationVC.name = textField.text ?? ""
            
        }
    }
    
}

