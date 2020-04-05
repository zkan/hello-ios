//
//  ViewControllerB.swift
//  iOSSharing
//
//  Created by Kan Ouivirach on 5/4/2563 BE.
//  Copyright © 2563 ODDS. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    var data: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.purple
        label.text = data
    }
}
