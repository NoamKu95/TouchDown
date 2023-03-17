//
//  DetailsNavigationBarView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import SwiftUI

struct DetailsNavigationBarView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack {
            Button(action: {
                hepticFeedback.impactOccurred()
                withAnimation(.easeIn) {
                    shop.selectedProduct = nil
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button(action: {
                //
            }) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                    
                    if !shop.productsInCart.isEmpty {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 14, height: 14, alignment: .center)
                            .offset(x: 13, y: -10)
                    } else {
                        EmptyView()
                    }
                }
            }
        }
    }
}

struct DetailsNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsNavigationBarView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
