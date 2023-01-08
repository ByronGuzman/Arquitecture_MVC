//
//  ApiClient.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/4/23.
//

import Foundation

final class ListOfCharacterApiClient {

    func getListOfCharacter() async -> CharacterModelResponse {
        let url = URL(string: "https://rickandmortyapi.com/api/character")!
        let (data, _) = try! await URLSession.shared.data(from: url)
        return try! JSONDecoder().decode(CharacterModelResponse.self, from: data)
    }

}
