//
//  LayoutConstants.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import SwiftUI

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
