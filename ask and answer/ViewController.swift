//
//  ViewController.swift
//  ask and answer
//
//  Created by s20181102931 on 2019/11/27.
//  Copyright © 2019 s20181102931. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 1;
    @IBAction func input(_ sender: UITextField) {
            switch index
            {
            case 1:
              input.text = "中国的首都是北京吗？";
            case 2:
              input.text = "北京烤鸭是北京的好吃的吗？"
            }
        }
    
    }
    
    @IBAction func yes(_ sender: UIButton) {
        index = index + 1;
    }
    
    @IBAction func no(_ sender: UIButton) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

