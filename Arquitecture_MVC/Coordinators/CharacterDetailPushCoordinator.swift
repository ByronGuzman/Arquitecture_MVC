//
//  CharacterDetailPushCoordinator.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/8/23.
//

import Foundation
import UIKit

class CharacterDetailPushCoordinator: Coordinator {
    let characterModel: CharacterModel
    var navigationController: UINavigationController?

    init(navigationController: UINavigationController?, characterModel: CharacterModel) {
        self.navigationController = navigationController
        self.characterModel = characterModel
    }

    func start() {
        let characterDetailViewController = CharacterDetailViewController(CharacterDetailModel: characterModel)
        navigationController?.pushViewController(characterDetailViewController,
                                                 animated: true )
    }
}
