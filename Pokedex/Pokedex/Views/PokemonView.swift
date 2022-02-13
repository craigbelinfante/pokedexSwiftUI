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
                LazyVGrid(columns: gridItems, content: {
                    ForEach(0..<251) { _ in
                        PokemonCell()
                    }
                })
            }
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
