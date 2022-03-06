//
//  PokemonViewModel.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import SwiftUI

class PokemonViewModel: ObservableObject {
    
    @Published var pokemon = [Pokemon]()
    
    init() {
        fetchPokemon()
    }

    let baseURL = "https://pokedex-bb36f.firebaseio.com/pokemon.json"
    
    func fetchPokemon() {
        guard let url = URL(string: baseURL) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                print("Error loading pokemon: \(error)")
            }
            
            guard let data = data?.parseData("null,") else { return }
            
            let decoder = JSONDecoder()
            guard let pokemon = try? decoder.decode([Pokemon].self, from: data) else { return }
            
            DispatchQueue.main.async {
                self.pokemon = pokemon
            }
        }.resume()
    }
    
}


