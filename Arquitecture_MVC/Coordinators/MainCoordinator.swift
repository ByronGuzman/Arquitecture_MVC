//
//  MainCordinator.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/8/23.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listOfCharacterViewController = storyboard.instantiateViewController(withIdentifier: "CharacterListViewController")

        navigationController?.pushViewController(listOfCharacterViewController,
                                                 animated: true)
    }


}
