//
//  AppDelegate.m
//  ObjCApp
//
//  Created by Wojciech Mandrysz on 15/06/16.
//  Copyright © 2016 Evokly. All rights reserved.
//

#import "AppDelegate.h"

@import Evokly;

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString * publicApiKey = @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjU3NjdlYzI5NWJlNDBiMTIwMGI2MTc2NS"
    "IsInByb2plY3QiOiI1NzY3ZWI4ZDViNzcyMjEzMDA5ZGRkMWMiLCJpYXQiOjE0NjY0Mjg0NTd9.y70wPn5s9405Nx-k9joCRWvDt2zodTw0b_183SvYDoU";
    // Start Evokly framework with your subdomain and public API key.
    [Evokly registerWithSubdomain:@"example" publicApiKey:publicApiKey];
    
    return YES;
}

-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    //iOS 9 and later
    //Evokly uses urls to work with other apps.
    BOOL handled = [Evokly handleURL:url sourceApplication:options[UIApplicationOpenURLOptionsSourceApplicationKey]];
    if (!handled) {
        //Custom logic here
    }
    return handled;
}

-(BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    //Prior to iOS 9.
    //Evokly uses urls to work with other apps.
    BOOL handled = [Evokly handleURL:url sourceApplication:sourceApplication];
    if (!handled) {
        //Custom logic here
    }
    return handled;
}

-(void)application:(UIApplication *)application didReceiveLocalNotification:(UILocalNotification *)notification {
    //Evokly uses notification to notify user when there's a beacon.
    BOOL handled = [Evokly handleNotification:notification];
    if (!handled) {
        //Custom logic here
    }
}
@end
