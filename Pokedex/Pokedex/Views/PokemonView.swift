//
//  PokemonView.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import SwiftUI

struct PokemonView: View {
    
    let gridItems = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: gridItems, spacing: 20) {
                    ForEach(0..<251) { _ in
                        PokemonCell(pokemon: MOCK_POKEMON[0])
                    }
                }
            }
        }
        .onAppear {
            PokemonViewModel().fetchPokemon { pokemon in
               // print(pokemon)
                
                for pokemon in pokemon {
                    print(pokemon.name)
                }
            }
        }
        // .navigationTitle("Pokedex")
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
