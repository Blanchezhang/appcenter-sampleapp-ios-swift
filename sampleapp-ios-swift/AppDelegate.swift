
import UIKit
import AppCenter
import AppCenterAnalytics
import AppCenterCrashes

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // Enabled App Center SDK verbose logs
        AppCenter.logLevel = .verbose
        
        AppCenter.start(withAppSecret: "573e2593-874f-40ae-8bbf-7bdabd7d01ba", services: [
            Analytics.self,
            Crashes.self,
        ])
        
        return true
    }
}
