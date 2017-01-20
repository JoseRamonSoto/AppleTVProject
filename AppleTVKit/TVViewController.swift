//
//  TVViewController.swift
//  AppleTVKit
//
//  Created by Jose Ramon Soto on 1/19/17.
//  Copyright © 2017 Jose Ramon Soto. All rights reserved.
//

import Foundation
import UIKit

class TVViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UIScrollViewDelegate {
    
    @IBOutlet var scrollView : UIScrollView!
    @IBOutlet var collectionView1 : UICollectionView!
    @IBOutlet var collectionView2 : UICollectionView!
    @IBOutlet var collectionView3 : UICollectionView!
    @IBOutlet var collectionView4 : UICollectionView!
    let reuseIdentifierFeatured = "FeaturedCell"
    let reuseIdentifierStandard = "StandardCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        self.scrollView!.contentSize = CGSize(width: 1920, height: 2200)
    }
    
    // Collection View Methods
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0.0, left: 50.0, bottom: 0.0, right: 50.0)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if (collectionView == self.collectionView1)
        {
            return 8
        }
        else
        {
            return 10
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (collectionView == self.collectionView1)
        {
            let cell : FeaturedCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.reuseIdentifierFeatured, for: indexPath) as! FeaturedCollectionViewCell
            
            let  imageFilename = "featuredtv-\(indexPath.row).jpg"
            cell.featuredImage.image = UIImage(named: imageFilename)
            
            return cell
        }
        
        if (collectionView == self.collectionView2)
        {
            let cell : StandardCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.reuseIdentifierStandard, for: indexPath) as! StandardCollectionViewCell
            
            let  imageFilename = "tv-\(indexPath.row).jpg"
            cell.image.image = UIImage(named: imageFilename)
            cell.title.text = "Show Title"
            
            return cell
        }
        
        if (collectionView == self.collectionView3)
        {
            let cell : StandardCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.reuseIdentifierStandard, for: indexPath) as! StandardCollectionViewCell
            
            let fileNumber = indexPath.row + 10
            let  imageFilename = "tv-\(fileNumber).jpg"
            cell.image.image = UIImage(named: imageFilename)
            cell.title.text = "Show Title"
            
            return cell
        }
        
        if (collectionView == self.collectionView4)
        {
            let cell : StandardCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: self.reuseIdentifierStandard, for: indexPath) as! StandardCollectionViewCell
            
            let fileNumber = 19 - indexPath.row
            let  imageFilename = "tv-\(fileNumber).jpg"
            cell.image.image = UIImage(named: imageFilename)
            cell.title.text = "Show Title"
            
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let playerVC = PlayerViewController()
        playerVC.playVideo()
        [self.present(playerVC, animated: true, completion: nil)]
    }
    
}
