//
//  ViewController.swift
//  ChainProgramming
//
//  Created by L on 2017/8/1.
//  Copyright © 2017年 L. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        UIView.make.owner(view).bgColor(nil).layout([10, 30, 50, 50])
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

