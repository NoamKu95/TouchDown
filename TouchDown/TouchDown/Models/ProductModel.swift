//
//  ProductModal.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let imageName: String
    let price: Int
    let description: String
    let rgbColorsArray: [Double]
    
    var red: Double { return rgbColorsArray[0] }
    var green: Double { return rgbColorsArray[1] }
    var blue: Double { return rgbColorsArray[2] }
    
    var formattedPrice: String { return "$\(price)" }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case imageName = "image"
        case price
        case description
        case rgbColorsArray = "color"
    }
}
