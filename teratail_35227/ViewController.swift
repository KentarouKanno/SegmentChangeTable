//
//  ViewController.swift
//  teratail_35227
//
//  Created by Kentarou on 2016/05/18.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstView: FirstView!
    @IBOutlet var secondView: SecondView!
    @IBOutlet weak var tableBaseView: UIView!
    
    
    @IBOutlet weak var tableSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.parent = self
        secondView.parent = self
        tableBaseView.addSubview(firstView)
        tableBaseView.addSubview(secondView)
        changedSegmentValue(tableSegment)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        firstView.frame = tableBaseView.bounds
        secondView.frame = tableBaseView.bounds
    }
    
    @IBAction func changedSegmentValue(sender: UISegmentedControl) {
        
        if tableSegment.selectedSegmentIndex == 0 {
            firstView.hidden = false
            secondView.hidden = true
        } else {
            firstView.hidden = true
            secondView.hidden = false
        }
    }
    
    func selectCell(identifier: String, item: String) {
        performSegueWithIdentifier(identifier, sender: item)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let first = segue.destinationViewController as? FirstViewController  {
            first.item = sender as! String
        }
        
        if let second = segue.destinationViewController as? SecondViewController  {
            second.item = sender as! String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

