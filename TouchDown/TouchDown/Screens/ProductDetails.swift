//
//  ProductDetails.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import SwiftUI

struct ProductDetails: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            Text("Hi")
            Spacer()
        }
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
            red: sampleProduct.red,
            green: sampleProduct.green,
            blue: sampleProduct.blue)
        ).ignoresSafeArea(.all, edges: .all)
    }
}

struct ProductDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetails()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
