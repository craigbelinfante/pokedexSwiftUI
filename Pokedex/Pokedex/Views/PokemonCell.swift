//
//  PokemonCell.swift
//  Pokedex
//
//  Created by Craig Belinfante on 2/13/22.
//

import SwiftUI

struct PokemonCell: View {
    let pokemon: Pokemon
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 16)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type.capitalized)
                        .font(.subheadline).bold()
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.white.opacity(0.25))
                        )
                        .frame(width: 100, height: 24)
                    
                    AsyncImage(url: URL(string: pokemon.imageUrl)) { image in
                        image
                            .resizable()
                            .scaledToFit()
                            .padding([.bottom,.trailing], 4)
                    } placeholder: {
                        Color.clear
                    }
                    .frame(width: 68, height: 68)
                }
            }
        }
        .background(Color(cellBackgroundColor(pokemon.type)))
        .cornerRadius(12)
        .shadow(color: .clear, radius: 6, x: 0.0, y: 0.0)
    }
    
    private func cellBackgroundColor(_ type: String) -> UIColor {
        switch type {
        case "fire": return .systemRed
        case "poison": return .systemGreen
        case "bug": return .systemGreen
        case "grass": return .systemGreen
        case "water": return .systemBlue
        case "electric": return .systemYellow
        case "psychic": return .systemPurple
        case "normal": return .systemOrange
        case "ground": return .systemBrown
        case "fighting": return .systemBrown
        case "rock": return .systemGray
        case "flying": return .systemTeal
        case "ice": return .systemIndigo
        case "dragon": return .systemIndigo
        case "fairy": return .systemPink
        default: return .systemGray2
        }
    }
}


struct PokemonCell_Previews: PreviewProvider {
    static var previews: some View {
        PokemonCell(pokemon: MOCK_POKEMON[0])
    }
}

