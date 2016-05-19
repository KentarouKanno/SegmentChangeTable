//
//  SecondView.swift
//  teratail_35227
//
//  Created by Kentarou on 2016/05/18.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class SecondView: UITableView, UITableViewDelegate, UITableViewDataSource {

    weak var parent: ViewController!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.delegate = self
        self.dataSource = self
        self.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // Data Array
    var dataArray = ["Second - One","Second - Two","Second - Three","Second - Four","Second - Five"]
    
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
        parent.selectCell("SecondViewController", item: dataArray[indexPath.row])
    }
}
