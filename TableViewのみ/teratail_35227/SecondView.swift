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
        self.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
    
    // Data Array
    var dataArray = ["Second - One","Second - Two","Second - Three","Second - Four","Second - Five"]
    
    // MARK: - TableView Delegate & DataSource
    
    // Section Count
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Row Count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Row Height
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    // Generate Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
    
    // Select Cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        parent.selectCell("SecondViewController", item: dataArray[indexPath.row])
    }
}
