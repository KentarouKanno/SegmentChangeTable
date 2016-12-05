//
//  ViewController.swift
//  teratail_35227
//
//  Created by Kentarou on 2016/05/18.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FirstViewDelegate, SecondViewDelegate {
    
    @IBOutlet var firstView: FirstView!
    @IBOutlet var secondView: SecondView!
    @IBOutlet weak var tableBaseView: UIView!
    
    
    @IBOutlet weak var tableSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstView.delegate  = self
        secondView.delegate = self
        tableBaseView.addSubview(firstView)
        tableBaseView.addSubview(secondView)
        
        changedSegmentValue(tableSegment)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        firstView.frame  = tableBaseView.bounds
        secondView.frame = tableBaseView.bounds
    }
    
    @IBAction func changedSegmentValue(_ sender: UISegmentedControl) {
        
        if tableSegment.selectedSegmentIndex == 0 {
            firstView.isHidden  = false
            secondView.isHidden = true
        } else {
            firstView.isHidden  = true
            secondView.isHidden = false
        }
    }
    
    func selectCell(identifier: String, item: String) {
        performSegue(withIdentifier: identifier, sender: item)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let first = segue.destination as? FirstViewController  {
            first.item = sender as! String
        }
        
        if let second = segue.destination as? SecondViewController  {
            second.item = sender as! String
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}

