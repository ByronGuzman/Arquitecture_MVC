//
//  CharacterModel.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/4/23.
//

import Foundation

struct CharacterModel: Decodable {
    let name: String
    let status: String
    let species: String
    let image: String
}
