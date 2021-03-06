//
//  AppDelegate.swift
//  Panther
//
//  Created by Mark Jackson on 9/21/15.
//  Copyright © 2015 Mark Jackson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        application.setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
        
        //For background gradient
//        let top : UIColor = UIColor(red:0.14, green:0.18, blue:0.25, alpha:1.0)
//        let bottom : UIColor = UIColor(red:0.45, green:0.51, blue:0.59, alpha:1.0)
        
//        let gradient : CAGradientLayer = CAGradientLayer()
//        gradient.frame = self.window!.bounds
//        gradient.colors = [top.CGColor, bottom.CGColor]
//        self.window!.layer.insertSublayer(gradient, atIndex: 0)
        
        
//        application.registerUserNotificationSettings(UIUserNotificationSettings(forTypes: [UIUserNotificationType.Sound,
//            UIUserNotificationType.Alert, UIUserNotificationType.Badge], categories: nil))
//        application.registerForRemoteNotifications()
        
        application.applicationIconBadgeNumber = 0
        
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
    
    func application(application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: NSData) {
        print("Token: \(deviceToken.hexadecimalString())")
        Spots.sharedInstance.sharedDefaults.setObject(deviceToken, forKey: Constants.DEVICE_TOKEN_KEY)
//        NSUserDefaults.standardUserDefaults().setObject(deviceToken, forKey: Constants.DEVICE_TOKEN_KEY)
    }
    
    func application(application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: NSError) {
        print("Error: \(error)")
    }


}

extension NSData {
    
    /// Create hexadecimal string representation of NSData object.
    ///
    /// :returns: String representation of this NSData object.
    
    func hexadecimalString() -> String {
        let string = NSMutableString(capacity: length * 2)
        var byte: UInt8 = 0
        
        for i in 0 ..< length {
            getBytes(&byte, range: NSMakeRange(i, 1))
            string.appendFormat("%02x", byte)
        }
        
        return string as String
    }
}

