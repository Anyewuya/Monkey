//
//  ViewController.swift
//  Monkey
//
//  Created by 周宇 on 15/6/29.
//  Copyright (c) 2015年 Dning. All rights reserved.
//

import UIKit

class RespoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.tabBarItem.title = "Repositories"
        self.navigationController!.tabBarItem.image = UIImage(named: "respo")
        self.navigationController!.navigationItem.title = "Object-C"
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController!.navigationBar.tintColor = UIColor.redColor()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

