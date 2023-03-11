//
//  HeroCarouselItemView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import SwiftUI

struct HeroCarouselItemView: View {
    
    let slider: HeroImage
    
    var body: some View {
        Image(slider.imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct HeroCarouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        HeroCarouselItemView(slider: heroImagesList[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
