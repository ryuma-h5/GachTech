//
//  ViewController.swift
//  GachTech
//
//  Created by Ryuma Harada on 2019/04/12.
//  Copyright © 2019 Ryuma Harada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func gacha () {
        self.performSegue (withIdentifier: "result", sender: nil)
    }

}

