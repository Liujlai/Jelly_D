//
//  ViewController.swift
//  Jelly_D
//
//  Created by idea on 2017/12/20.
//  Copyright © 2017年 idea. All rights reserved.
//

import UIKit
import Jelly
import SwiftyButton

class ViewController: UIViewController {
    fileprivate var jellyAnimator: JellyAnimator?
    fileprivate func createVC() -> UIViewController? {
        return self.storyboard?.instantiateViewController(withIdentifier: "PresentMe")
    }
    fileprivate lazy var model : [DataObject] = {
        return ExampleDataProvider().data
    }()
    var btn:PressableButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn = PressableButton(frame: CGRect(x: 50, y: 200, width: 300, height: 70))
        btn.colors = .init(button: .orange, shadow: .red)
        btn.setTitle("Press me", for: .normal)
        btn.cornerRadius  = 10
        btn.addTarget(self, action: #selector(self.click), for: .touchUpInside)
        self.view.addSubview(btn)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func click(){
        let a = Int(arc4random()%10)
        print(self.model.count,"-----",a)
        let presentation = self.model[a<9 ? a:a-1].presentation
        let viewController = createVC()
        //1.
        //        let presentation = JellySlideInPresentation()
        //2.
        self.jellyAnimator = JellyAnimator(presentation:presentation)
        //3.
        self.jellyAnimator?.prepare(viewController: viewController!)
        //4.
        self.present(viewController!, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

