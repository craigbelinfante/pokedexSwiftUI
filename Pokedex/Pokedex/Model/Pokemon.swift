//
//  Pokemon.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import Foundation

struct Pokemon: Codable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
}



let MOCK_POKEMON: [Pokemon] = [
    .init(id: 0, name: "Bulbasaur", imageUrl: "pokemonImage", type: "poison")
]
