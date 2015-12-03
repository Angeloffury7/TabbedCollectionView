//
//  ViewController.swift
//  Example
//
//  Created by Guilherme Moura on 12/1/15.
//  Copyright © 2015 Reefactor, Inc. All rights reserved.
//

import UIKit
import RFTabbedCollectionView

class ViewController: UIViewController, RFTabbedCollectionViewDataSource {
    @IBOutlet weak var tabbedCollectionView: RFTabbedCollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let titles = ["Home", "Shopping", "Health", "Car and Transport", "Education", "Pets", "Leisure", "Phone", "Computer", "Other"]
        let images = [UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!,
            UIImage(named: "globe_icon")!]
        tabbedCollectionView.createTabs(titles, images: images)
        tabbedCollectionView.dataSource = self
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - RFTabbedCollectionView data source methods
    func collectionView(collectionView: RFTabbedCollectionView, numberOfItemsInTab tab: Int) -> Int {
        return (tab+1)*10
    }

    func collectionView(collectionView: RFTabbedCollectionView, titleForItemAtIndexPath indexPath: NSIndexPath) -> String {
        return "Item \(indexPath.row)"
    }
    
    func collectionView(collectionView: RFTabbedCollectionView, imageForItemAtIndexPath indexPath: NSIndexPath) -> UIImage {
        var image: UIImage!
        switch(indexPath.row % 3) {
        case 0:
            image = UIImage(named: "car")
        case 1:
            image = UIImage(named: "computer")
        case 2:
            image = UIImage(named: "home")
        default:
            image = UIImage(named: "car")
        }
        return image
    }
    
    func collectionView(collectionView: RFTabbedCollectionView, colorForItemAtIndexPath indexPath: NSIndexPath) -> UIColor {
        return UIColor(red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
    }

}

