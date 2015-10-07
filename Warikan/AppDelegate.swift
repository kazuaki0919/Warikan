//
//  AppDelegate.swift
//  Warikan
//
//  Created by 並木一晃 on 2015/05/24.
//  Copyright (c) 2015年 並木一晃. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        let storyboard: UIStoryboard = self.grabStoryboard()
        if let window = window {
            window.rootViewController = storyboard.instantiateInitialViewController() as UIViewController!
        }
        
        self.window?.makeKeyAndVisible()
        
        return true
    }
    
    func grabStoryboard() -> UIStoryboard {
        var storyboard = UIStoryboard()
        let height = UIScreen.mainScreen().bounds.size.height
        
        //iPhone6 Plus
         if height == 736 {
            storyboard = UIStoryboard(name: "5.5inchStoryboard", bundle: nil)
        //iPhone6
        }else if height == 667 {
            storyboard = UIStoryboard(name: "Main", bundle: nil)
        //iPhone4/4s
        }else if height == 480 {
            storyboard = UIStoryboard(name: "3.5inchStoryboard", bundle: nil)
        //iPhone5・5s・5c
        }else {
            storyboard = UIStoryboard(name: "4inchStoryboard", bundle: nil)
        }
        return storyboard
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

