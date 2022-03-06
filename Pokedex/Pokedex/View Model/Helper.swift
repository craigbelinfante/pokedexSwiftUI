//
//  Helper.swift
//  Pokedex
//
//  Created by Craig Belinfante on 3/6/22.
//

import SwiftUI

extension Data {
    func parseData(_ string: String) -> Data? {
        let dataString = String(data: self, encoding: .utf8)
        let parsedData = dataString?.replacingOccurrences(of: string, with: "")
        guard let data = parsedData?.data(using: .utf8) else { return nil }
        return data
    }
}
