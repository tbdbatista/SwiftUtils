# Start an app without using a storyboard (for iOS 13+)
### 1 - delete: main.storyborad
### 2 - go to info.plist and remove the Main Storyboard File Base Name key (remove the hole line).
### 3 - go to Target, in Build Settings tab seach for "main" and remove the value of UIKit Main Storyboard File Base Name
### 4 - still in Target, in General tab, look for the section Deployment Info and remove the Main Interface value.
### 5 - then override the initial code in SceneDelegate using those Code Snippet below.

### SceneDelegate
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = ViewController() // <<== Change the name of your first view controller here
        self.window = window
        window.makeKeyAndVisible()
    }
}
