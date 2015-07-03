//
//  LanguageTableViewController.swift
//  Monkey
//
//  Created by TRY-MAC01 on 15/7/2.
//  Copyright (c) 2015年 Dning. All rights reserved.
//

import UIKit

class LanguageTableViewController: UITableViewController {

    var languageArray = Array(arrayLiteral: "Ruby", "Go", "Object-C", "Swift", "C", "C++", "Shell", "Python", "C#", "Jave")
    let identifier: String = "Language"
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "请选择语言"
        self.tableView.delegate = self
        self.tableView.dataSource = self
        languageArray = ["Ruby", "Go", "Object-C", "Swift", "C", "C++", "Shell", "Python", "C#", "Jave", "Ruby", "Go", "Object-C", "Swift", "C", "C++", "Shell", "Python", "C#", "Jave"]
        self.tableView.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "Language")
        self.hidesBottomBarWhenPushed = true
        self.navigationController!.hidesBarsOnTap = true
        self.navigationController!.setToolbarHidden(true, animated: true)
//        tabBarController!.tabBar.hidden = true
     }
    
//    override func viewWillAppear(animated: Bool) {
//        super.viewWillAppear(animated)
//        self.tabBarController!.tabBar.hidden = true
//    }
//    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//        self.tabBarController!.tabBar.hidden = false
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return self.languageArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Language", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel!.text = "\(languageArray[indexPath.row])"
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let lang = self.languageArray[indexPath.row]
        self.navigationController!.popViewControllerAnimated(true)
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
