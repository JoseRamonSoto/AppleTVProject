//
//  FocusEngineViewController.swift
//  AppleTVKit
//
//  Created by Jose Ramon Soto on 1/16/17.
//  Copyright © 2017 Jose Ramon Soto. All rights reserved.
//

//import UIKit
//
//class FocusEngineViewController: UIViewController {
//    @IBOutlet weak var buttons: UIButton!
//
//
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        let rightButtonIds = [3, 6]
//        for buttonId in rightButtonIds {
//            if let button = buttonWithTag(buttonId) {
//                let focusGuide = UIFocusGuide()
//                view.addLayoutGuide(focusGuide)
//                focusGuide.widthAnchor.constraintEqualToAnchor(button.widthAnchor).active = true
//                focusGuide.heightAnchor.constraintEqualToAnchor(button.heightAnchor).active = true
//                focusGuide.leadingAnchor.constraintEqualToAnchor(button.trailingAnchor, constant: 60.0).active = true
//                focusGuide.centerYAnchor.constraintEqualToAnchor(button.centerYAnchor).active = true
//                focusGuide.preferredFocusedView = buttonWithTag(buttonId-2)
//            }
//        }
//        
//        let leftButtonIds = [1, 4]
//        for buttonId in leftButtonIds {
//            if let button = buttonWithTag(buttonId) {
//                let focusGuide = UIFocusGuide()
//                view.addLayoutGuide(focusGuide)
//                focusGuide.widthAnchor.constraintEqualToAnchor(button.widthAnchor).active = true
//                focusGuide.heightAnchor.constraintEqualToAnchor(button.heightAnchor).active = true
//                focusGuide.trailingAnchor.constraintEqualToAnchor(button.leadingAnchor, constant: -60.0).active = true
//                focusGuide.centerYAnchor.constraintEqualToAnchor(button.centerYAnchor).active = true
//                focusGuide.preferredFocusedView = buttonWithTag(buttonId+2)
//            }
//            
//        }
//        
//        func didUpdateFocusInContext(context: UIFocusUpdateContext, withAnimationCoordinator coordinator: UIFocusAnimationCoordinator) {
//            super.didUpdateFocusInContext(context, withAnimationCoordinator: coordinator)
//            
//            if let focusedButton = context.previouslyFocusedView as? UIButton, buttons.constraints(focusedButton) {
//                coordinator.addCoordinatedAnimations({
//                    focusedButton.alpha = 0.5
//                }, completion: {
//                    // Run completed animation
//                })
//            }
//        }
//        
//        func buttonWithTag(_ tag: Int) -> UIButton? {
//            for button in buttons {
//                if button.tag == tag {
//                    return button
//                }
//            }
//            
//            return nil
//        }
//    }
//
//}
