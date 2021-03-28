//
//  ViewController.swift
//  FoodTracker
//
//  Created by Kan Ouivirach on 3/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }

}

