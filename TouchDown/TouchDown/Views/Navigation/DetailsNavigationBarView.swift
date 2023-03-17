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
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
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
