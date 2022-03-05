//
//  Pokemon.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import Foundation

struct PokemonResults: Codable {
    var results: [Pokemon]
}

struct Pokemon: Codable, Identifiable {
    let id = UUID()
    let name: String
    let url: String
}



let MOCK_POKEMON: [Pokemon] = [
    .init(name: "Bulbasaur", url: "pokemonImage")
]
