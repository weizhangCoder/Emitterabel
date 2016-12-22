//
//  ViewController.swift
//  粒子效果
//
//  Created by zhangwei on 16/12/22.
//  Copyright © 2016年 jyall. All rights reserved.
//

import UIKit

class ViewController: UIViewController,Emitterable{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }

    @IBAction func start(_ sender: UIButton) {
        
        startEmittering(CGPoint(x: UIScreen.main.bounds.width - 50, y: UIScreen.main.bounds.height - 30))
    }
   
    @IBAction func stop(_ sender: UIButton) {
        
        stopEmitter()
    }



}

