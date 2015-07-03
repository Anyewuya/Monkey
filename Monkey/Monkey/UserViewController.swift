//
//  UserViewController.swift
//  Monkey
//
//  Created by 周宇 on 15/6/30.
//  Copyright (c) 2015年 Dning. All rights reserved.
//

import UIKit

class UserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var tableView = UITableView(frame: CGRectZero, style: UITableViewStyle.Plain)

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController!.tabBarItem.title = "User"
        self.navigationController!.tabBarItem.image = UIImage(named: "user")
        self.title = "所有语言"
        self.navigationController!.navigationBar.tintColor = UIColor.redColor()
        self.navigationController!.navigationBar.tintColor = UIColor.blueColor()
        self.navigationController!.navigationBar.backgroundColor = UIColor.blueColor()

        var leftBar = UIBarButtonItem(title: "City", style: UIBarButtonItemStyle.Done, target: self, action: Selector(choseCity()))
        var rightBar = UIBarButtonItem(title: "Test", style: UIBarButtonItemStyle.Done, target: self, action: Selector(choseLangues()))
        navigationItem.setLeftBarButtonItem(leftBar, animated: true)
        navigationItem.setRightBarButtonItem(rightBar, animated: true)
        
        self.tableView = UITableView(frame: CGRectZero, style: .Grouped)
        self.view.addSubview(self.tableView)
        self.tableView.setTranslatesAutoresizingMaskIntoConstraints(false)
        let tableViewConstraintX = NSLayoutConstraint(item: self.tableView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        let tableViewConstraintY = NSLayoutConstraint(item: self.tableView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        let tableViewConstraintWidth = NSLayoutConstraint(item: self.tableView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        let tableViewConstraintHeight = NSLayoutConstraint(item: self.tableView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.Height, multiplier: 1, constant: 0)
        
        tableViewConstraintX.identifier = "X"
        tableViewConstraintY.identifier = "Y"
        tableViewConstraintWidth.identifier = "W"
        tableViewConstraintHeight.identifier = "H"
        
        self.view.addConstraints([tableViewConstraintX, tableViewConstraintY, tableViewConstraintWidth, tableViewConstraintHeight])

        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Swift")

        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    func choseCity() {
        navigationItem.title = "ceshi"
        println("the choseCity is Cilcked")
    }
    
    func choseLangues() {
        println("the choseLangues is Cilcked")
    }
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return  30.0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Swift") as! UITableViewCell
        cell.textLabel!.text = "Swift \(indexPath.section):\(indexPath.row)"
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        self.navigationController!.pushViewController(LanguageTableViewController.alloc(), animated: true)
        
    }
}


