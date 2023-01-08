//
//  CharacterDetailViewController.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/4/23.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }

    override func loadView() {
        view = CharacterDetailView()
    }

    init(CharacterDetailModel: CharacterModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(CharacterDetailModel)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
