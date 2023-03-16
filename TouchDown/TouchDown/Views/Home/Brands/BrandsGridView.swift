//
//  BrandsGridView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import SwiftUI

struct BrandsGridView: View {
    
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            LazyHGrid (rows: gridLayout, spacing: columnSpacing) {
                ForEach(brandsList) { brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandsGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
