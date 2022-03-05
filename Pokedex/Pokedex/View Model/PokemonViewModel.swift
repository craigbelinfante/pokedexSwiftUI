//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import SwiftUI

class PokemonViewModel {
    let baseURL = "https://pokeapi.co/api/v2/pokemon?limit=251"
    
    func fetchPokemon(completion: @escaping ([Pokemon]) -> ()) {
        guard let url = URL(string: baseURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            guard let pokemon = try? decoder.decode(PokemonResults.self, from: data) else { return }
            
            DispatchQueue.main.async {
                completion(pokemon.results)
                print(pokemon.results)
            }
        }.resume()
    }
}
