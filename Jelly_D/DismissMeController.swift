//
//  DismissMeController.swift
//  Jelly_D
//
//  Created by idea on 2017/12/20.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit

class DismissMeController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissMe(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

