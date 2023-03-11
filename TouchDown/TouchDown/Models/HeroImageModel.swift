//
//  HeroImageModel.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import Foundation

struct HeroImage: Codable, Identifiable {
    let id: Int
    let imageName: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case imageName = "image"
    }
}
