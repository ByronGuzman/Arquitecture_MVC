//
//  ListOfCharacterDataSource.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/4/23.
//

import Foundation
import UIKit

class ListOfCharacterTableDataSource: NSObject, UITableViewDataSource {

    private let tableView: UITableView

    private(set) var characters: [CharacterModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }

    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterListCellView", for: indexPath) as! CharacterListCellView

        let character = characters[indexPath.row]
        cell.configure(character)

        return cell
    }

    func set(Characters: [CharacterModel]) {
        self.characters = Characters
    }
}
