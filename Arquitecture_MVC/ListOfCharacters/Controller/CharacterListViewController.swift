//
//  ViewController.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/4/23.
//

import UIKit

class CharacterListViewController: UIViewController {
    var mainView: CharacterListView { self.view as! CharacterListView }
    let apiClient = ListOfCharacterApiClient()
    private var tableViewDataSource: ListOfCharacterTableDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?

    var characterDetailPushCoordinator: CharacterDetailPushCoordinator?
    var characterDetailModalCoordinator: CharacterDetailModalCoordinator?

    override func loadView() {
        view = CharacterListView()
        tableViewDelegate = ListOfCharactersTableViewDelegate()

        tableViewDataSource = ListOfCharacterTableDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("Index: \(index)")

            guard let dataSource = self?.tableViewDataSource else {
                return
            }

            /* let characterModel = dataSource.characters[index]
            let characterDetailViewController = CharacterDetailViewController(CharacterDetailModel: characterModel)
            self?.present(characterDetailViewController, animated: true) */

            /* let characterModel = dataSource.characters[index]
            self?.characterDetailPushCoordinator = CharacterDetailPushCoordinator(navigationController: self?.navigationController,
                                                                                  characterModel: characterModel)
            self?.characterDetailPushCoordinator?.start() */

            let characterModel = dataSource.characters[index]
            self?.characterDetailModalCoordinator = CharacterDetailModalCoordinator(viewController: self,
                                                                                characterModel: characterModel)
            self?.characterDetailModalCoordinator?.start()
        }

        Task {
            let characters = await apiClient.getListOfCharacter()
            tableViewDataSource?.set(Characters: characters.results)
        }
    }
}

