//
//  AppDelegate.swift
//  Project
//
//  Created by 苑伟 on 2021/2/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = .white
        
        self.window?.rootViewController = UINavigationController(rootViewController: MainViewController())
        
        self.window?.makeKeyAndVisible()
        return true
    }

}

