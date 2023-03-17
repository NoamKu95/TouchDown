//
//  DetailsHeroView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct DetailsHeroView: View {
    
    var product: Product
    @State private var isAnimating: Bool = false
    
    var body: some View {
        HStack (alignment: .center, spacing: 6) {
            VStack (alignment: .leading, spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(product.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.45, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
            
            
        }
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct DetailsHeroView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsHeroView(product: sampleProduct)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
