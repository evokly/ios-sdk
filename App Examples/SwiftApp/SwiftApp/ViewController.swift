//
//  ViewController.swift
//  SwiftApp
//
//  Created by Wojciech Mandrysz on 15/06/16.
//  Copyright © 2016 Evokly. All rights reserved.
//

import UIKit
import Evokly

class ViewController: UIViewController {

    @IBAction func showDebug() {
        Evokly.presentDebugViewController(parent: self)
    }

}
