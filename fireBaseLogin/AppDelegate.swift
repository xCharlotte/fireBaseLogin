//
//  AppDelegate.swift
//  fireBaseLogin
//
//  Created by Charlotte Voskuilen on 19-12-16.
//  Copyright © 2016 Alpaca. All rights reserved.
//

import UIKit
import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
         FIRApp.configure()
        // Override point for customization after application launch.
        return true
    }

}

