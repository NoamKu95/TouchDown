//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let categoryName: String
    let iconName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case categoryName = "name"
        case iconName = "image"
    }
}
