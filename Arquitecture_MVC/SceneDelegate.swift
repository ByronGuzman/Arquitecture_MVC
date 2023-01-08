//
//  SceneDelegate.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/4/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var mainConordonator: MainCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        let navigatioController = UINavigationController()
        mainConordonator = MainCoordinator(navigationController: navigatioController)

        window?.rootViewController = navigatioController
        window?.makeKeyAndVisible()

        mainConordonator?.start()
    }

}

