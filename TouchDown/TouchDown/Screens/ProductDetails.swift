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
                DetailsNavigationBarView()
                    .padding(.horizontal)
                Text("Hi")
                Spacer()
            }
            .background(Color(
                red: sampleProduct.red,
                green: sampleProduct.green,
                blue: sampleProduct.blue)
            )
        }
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails()
    }
}
