//
//  AddToCartButton.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct AddToCartButton: View {
    
    var product: Product
    
    var body: some View {
        Button(action: {
            //
        }) {
            Spacer()
            Text("add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }
        .padding()
        .background(
            Color(
                red: product.red,
                green: product.green,
                blue: product.blue)
                .clipShape(Capsule())
        )
    }
}

struct AddToCartButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButton(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
