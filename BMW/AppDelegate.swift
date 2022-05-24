//
//  AppDelegate.swift
//  BMW
//
//  Created by TMCF on 5/24/22.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        Parse.initialize(with: ParseClientConfiguration(block: {(configuration: ParseMutableClientConfiguration) in
            configuration.applicationId = "F1Udha5aeHgRMHVaGhkCdhvr8wxbokuPDWTVvpEx"
            configuration.server = "https://parseapi.back4app.com/"
            configuration.clientKey = "Q09HUm3oUpIEpPYLno9aHJPyAwwb9twBWVWClwxf"
        }))
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

