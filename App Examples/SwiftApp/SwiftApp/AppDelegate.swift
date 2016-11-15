//
//  AppDelegate.swift
//  SwiftApp
//
//  Created by Wojciech Mandrysz on 15/06/16.
//  Copyright © 2016 Evokly. All rights reserved.
//

import UIKit
import Evokly

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        let publicApiKey = "Your Public API Key"
        
        // Start Evokly framework with your subdomain and public API key.
        Evokly.register(subdomain:"example", publicApiKey: publicApiKey)
        
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        //iOS 9 and later
        //Evokly uses urls to work with other apps.
        let handled = Evokly.handleURL(url, sourceApplication: options[UIApplicationOpenURLOptionsKey("UIApplicationOpenURLOptionsSourceApplicationKey")] as? String)
        if !handled {
            //Custom logic here
        }
        return handled
    }

    func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
        //Prior to iOS 9.
        //Evokly uses urls to work with other apps.
        let handled = Evokly.handleURL(url, sourceApplication: sourceApplication)
        if !handled {
            //Custom logic here
        }
        return handled
    }

    func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        //Evokly uses notification to notify user when there's a beacon.
        let handled = Evokly.handleNotification(notification)
        if !handled {
            //Cusom logic here
        }
        
    }
}
