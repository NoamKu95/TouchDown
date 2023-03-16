//
//  HeroCarouselView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import SwiftUI

struct HeroCarouselView: View {
    var body: some View {
        TabView {
            ForEach(heroImagesList) { image in
                HeroCarouselItemView(slider: image)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct HeroCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        HeroCarouselView()
            .background(.gray)
    }
}
