//
//  BrandModel.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import Foundation

struct Brand: Codable, Identifiable {
    let id: Int
    let imageName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case imageName = "image"
    }
}
