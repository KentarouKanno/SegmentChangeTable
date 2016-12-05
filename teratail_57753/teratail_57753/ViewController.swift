//
//  ViewController.swift
//  teratail_57753
//
//  Created by Kentarou on 2016/12/06.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    var pageViewController: PageViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pageViewController = self.childViewControllers.first as? PageViewController
    }
    
    @IBAction func changedSegment(_ sender: UISegmentedControl) {
        
        if segmentedControl.selectedSegmentIndex == 0 {
            pageViewController.selectFirstView()
        } else {
            pageViewController.selectSecondView()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

