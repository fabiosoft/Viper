//
//  AppDelegate.swift
//  Prova
//
//  Created by Diego Caridei on 03/08/18.
//  Copyright © 2018 Diego Caridei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let personView = PersonRouter.createModule()
        let navigationController = UINavigationController(rootViewController: personView)
        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()

        return true
    }
}

