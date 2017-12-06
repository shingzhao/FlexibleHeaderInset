import UIKit
import MaterialComponents

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow(frame: UIScreen.main.bounds)

    window?.rootViewController = UINavigationController.init(rootViewController: ListViewController())

    window?.makeKeyAndVisible()

    return true
  }
}
