//
//  FirstView.swift
//  teratail_35227
//
//  Created by Kentarou on 2016/05/18.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class FirstView: UIView, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    weak var parent: ViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myTableView.delegate = self
        myTableView.dataSource = self
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // Data Array
    var dataArray = ["First - One","First - Two","First - Three","First - Four","First - Five"]
    
    // MARK: - TableView Delegate & DataSource
    
    // Section Count
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // Row Count
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Row Height
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 44
    }
    
    // Generate Cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    // Select Cell
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        parent.selectCell("FirstViewController", item: dataArray[indexPath.row])
    }
}
