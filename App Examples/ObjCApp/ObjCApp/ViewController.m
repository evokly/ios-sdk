//
//  ViewController.m
//  ObjCApp
//
//  Created by Wojciech Mandrysz on 15/06/16.
//  Copyright © 2016 Evokly. All rights reserved.
//

#import "ViewController.h"
@import Evokly;

@implementation ViewController

- (IBAction)showDebug {
    [Evokly presentDebugViewControllerWithParent:self];
}

@end
