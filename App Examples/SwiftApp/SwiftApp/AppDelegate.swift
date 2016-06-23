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

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let publicApiKey = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjU3NjdlYzI5NWJlNDBiMTIwMGI2MTc2NSIsInByb2plY3QiOiI1NzY" +
        "3ZWI4ZDViNzcyMjEzMDA5ZGRkMWMiLCJpYXQiOjE0NjY0Mjg0NTd9.y70wPn5s9405Nx-k9joCRWvDt2zodTw0b_183SvYDoU"

        // Start Evokly framework with your subdomain and public API key.
        Evokly.register(subdomain:"example", publicApiKey: publicApiKey)

        return true
    }

    func application(app: UIApplication, openURL url: NSURL, options: [String : AnyObject]) -> Bool {
        //iOS 9 and later
        //Evokly uses urls to work with other apps.
        let handled = Evokly.handleURL(url, sourceApplication: options["UIApplicationOpenURLOptionsSourceApplicationKey"] as? String)
        if !handled {
            //Custom logic here
        }
        return handled
    }

    func application(application: UIApplication, openURL url: NSURL, sourceApplication: String?, annotation: AnyObject) -> Bool {
        //Prior to iOS 9.
        //Evokly uses urls to work with other apps.
        let handled = Evokly.handleURL(url, sourceApplication: sourceApplication)
        if !handled {
            //Custom logic here
        }
        return handled
    }


    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        //Evokly uses notification to notify user when there's a beacon.
        let handled = Evokly.handleNotification(notification)
        if !handled {
            //Cusom logic here
        }
    }
}
