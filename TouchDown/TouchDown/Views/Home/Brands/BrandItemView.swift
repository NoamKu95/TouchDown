//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand: Brand
    
    var body: some View {
        Image(brand.imageName)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(.gray, lineWidth: 1)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brandsList[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
