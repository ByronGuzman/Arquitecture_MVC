//
//  CharacterDetailModalCoordinator.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/8/23.
//

import Foundation
import UIKit

class CharacterDetailModalCoordinator: Coordinator {
    let characterModel: CharacterModel
    var viewController: UIViewController?

    init(viewController: UIViewController?, characterModel: CharacterModel) {
        self.viewController = viewController
        self.characterModel = characterModel
    }

    func start() {
        let characterDetailViewController = CharacterDetailViewController(CharacterDetailModel: characterModel)
        viewController?.present(characterDetailViewController,
                                   animated: true)
    }
}
