//
//  ProductDetails.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import SwiftUI

struct ProductDetails: View {
    var body: some View {
        ZStack {
            VStack (alignment: .leading, spacing: 5) {
                
                // MARK: - NAV BAR
                DetailsNavigationBarView()
                    .padding(.horizontal)
                
                // MARK: - HERO
                DetailsHeaderView(product: sampleProduct)
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                DetailsHeroView(product: sampleProduct)
                    .padding(.horizontal)
                    .zIndex(1)
                
                VStack (alignment: .center, spacing: 0) {
                    
                    // MARK: - RATINGS & SIZES
                    HStack (alignment: .center, spacing: 0) {
                        RatingsView()
                        Spacer()
                        SizesView()
                    }
                    .padding(.vertical)
                    
                    // MARK: - DESCRIPTION
                    ScrollView (.vertical, showsIndicators: false) {
                        Text(sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    
                    // MARK: - QUANTITY & FAVORITE
                    HStack {
                        QuantityView()
                        Spacer()
                        FavoriteIndicatorView()
                    }
                    .padding()
                    
                    // MARK: - ADD TO CART
                    AddToCartButton(product: sampleProduct)
                        .padding(.horizontal)
                        .padding(.bottom)
                }
                .padding(.horizontal)
                .background(
                    Color.white.clipShape(SheetTopView())
                        .padding(.top, -105)
                )
                
            }
            .zIndex(0)
            .background(Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
            )
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails()
    }
}
