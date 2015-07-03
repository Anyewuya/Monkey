//
//  AppDelegate.swift
//  Monkey
//
//  Created by 周宇 on 15/6/29.
//  Copyright (c) 2015年 Dning. All rights reserved.
//

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
//    let wa: Dictionary = ["Language":"所有语言"]
//    let defaults = NSUserDefaults.standardUserDefaults()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
//        NSUserDefaults.standardUserDefaults().registerDefaults(wa as [NSObject :AnyObject])
        
        
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window!.backgroundColor = UIColor.whiteColor()
        
        self.window!.backgroundColor = UIColor.whiteColor()
        
        
        var navUser = UINavigationController(rootViewController: UserViewController.alloc())
        var navResp = UINavigationController(rootViewController: RespoViewController.alloc())
        
        navUser.navigationBar.tintColor = UIColor.yellowColor()
//        navUser.navigationBar.titleTextAttributes = Dictionary()
        navUser.tabBarItem.title = "User"
        navUser.tabBarItem.image = UIImage(named: "user")
        
        navResp.tabBarItem.title = "Repositories"
        navResp.tabBarItem.image = UIImage(named: "respo")

        var vcArray: Array = [navUser, navResp]
        
        var tabBC: UITabBarController = UITabBarController.alloc()
        tabBC.setViewControllers(vcArray, animated: true)
    
        var tabBar = tabBC.tabBar
        /*
        var tabBar0: UITabBarItem = tabBar.items![0] as! UITabBarItem
        var tabBar1: UITabBarItem = tabBar.items![1] as! UITabBarItem
        tabBar0.title = "User"
        tabBar0.image = UIImage(named: "user")
        
        tabBar1.title = "Repositories"
        tabBar1.image = UIImage(named: "respo")
        */
        tabBar.backgroundColor = UIColor.redColor()
        
        self.window!.rootViewController = tabBC
        self.window!.makeKeyAndVisible()
        self.window!.makeKeyWindow()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

