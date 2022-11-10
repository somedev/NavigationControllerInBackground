import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let w = UIWindow(frame: UIScreen.main.bounds)
        self.window = w

        let vc = ViewController(nibName: nil, bundle: nil)

        let nav = UINavigationController(rootViewController: vc)
        nav.view.backgroundColor = .green

        w.rootViewController = nav

        w.makeKeyAndVisible()

        /// move to background and wait while UINavigationController will update `viewController`s stack
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            nav.setViewControllers([UIViewController()], animated: false)
        }

        return true
    }
}

