//
//  AppDelegate.swift
//  WatchDogMainThread
//
//  Created by Pavel Volhin on 07/29/2020.
//  Copyright (c) 2020 Pavel Volhin. All rights reserved.
//

import UIKit
import WatchDogMainThread

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.watchDog = WatchDogMainThread(threshold: 0.1, handler: { seconds, firstTime in
            if firstTime {
                print("Main Thread is blocked: \(seconds) sec")
            } else {
                print("Main Thread is still blocked: \(seconds) sec")
            }
        })
        return true
    }
    
    private var watchDog: WatchDogMainThread!
}

