//
//  PlayerViewController.swift
//  AppleTVKit
//
//  Created by Jose Ramon Soto on 1/19/17.
//  Copyright © 2017 Jose Ramon Soto. All rights reserved.
//

import Foundation
import UIKit
import AVKit

class PlayerViewController: AVPlayerViewController, AVPlayerViewControllerDelegate
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func playVideo()
    {
        
        player = AVPlayer(url: URL(string: "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        player?.play()
    }
    
}
