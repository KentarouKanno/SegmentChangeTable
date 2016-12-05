//
//  PageViewController.swift
//  teratail_57753
//
//  Created by Kentarou on 2016/12/06.
//  Copyright © 2016年 Kentarou. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        selectFirstView()
    }
    
    func selectFirstView() {
        if let firstVC = storyboard?.instantiateViewController(withIdentifier: "FirstVC") as? FirstViewController {
            self.setViewControllers([firstVC], direction: .forward, animated: false, completion: nil)
        }
    }
    
    func selectSecondView() {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController {
            self.setViewControllers([secondVC], direction: .forward, animated: false, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}
