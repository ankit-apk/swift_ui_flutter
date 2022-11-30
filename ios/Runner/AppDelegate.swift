import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
      self.window = UIWindow(frame: UIScreen.main.bounds)
      let storyBoard = UIStoryboard(name: "DemoSb", bundle: nil)
      let viewController = storyBoard.instantiateViewController(withIdentifier: "demo") as UIViewController
      self.window?.rootViewController = viewController
      self.window?.makeKeyAndVisible()
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
