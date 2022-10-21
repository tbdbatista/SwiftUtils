# Start an app without using a storyboard
### 1 - delete: SceneDelegate, main.storyborad
### 2 - remove in infoplist all configuration inside Application Scene Manifest
### 3 - go to Target, above General tab, seach for "main" and remove the value of UIKit Main Storyboard File Base Name
### 4 - finally, delete all code in App Delegate and use the Code Snippet below

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private func application(_ application: UIApplication, didFinishLauchingWithOptions lauchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        window?.rootViewController = ViewController()
        
        return true
    }
}