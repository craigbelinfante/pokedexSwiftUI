//
//  ContentView.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                PokemonViewModel().fetchPokemon { pokemon in
                    print(pokemon)
                    
                    for pokemon in pokemon {
                        print(pokemon.name)
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
