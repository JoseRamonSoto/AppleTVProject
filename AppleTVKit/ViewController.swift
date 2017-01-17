//
//  ViewController.swift
//  AppleTVKit
//
//  Created by Jose Ramon Soto on 1/16/17.
//  Copyright © 2017 Jose Ramon Soto. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    let  results: [String] = ["Java", "Swift", "C#", "Python", "C++", "Ruby", "Objective-C", "Ask Later"]
    
    @IBOutlet weak var labelResult: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let tappedRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.gestureTapped))
        tappedRecognizer.allowedPressTypes = [NSNumber(value: UIPressType.select.rawValue)]
        
        self.view.addGestureRecognizer(tappedRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func gestureTapped(gestureRecognizer: UITapGestureRecognizer)
    {
        let fadeAnimation = CABasicAnimation(keyPath: "opacity")
        fadeAnimation.fromValue = 0.0
        fadeAnimation.toValue = 1.0
        fadeAnimation.duration = 2.0
        
        let random = Int(arc4random_uniform(UInt32(results.count)))
        let choice = results[random]
        labelResult.text = choice
        
        labelResult.layer.add(fadeAnimation, forKey: "opacity")
    }

}

