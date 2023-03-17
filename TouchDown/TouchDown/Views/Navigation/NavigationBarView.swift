//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import SwiftUI

struct NavigationBarView: View {
    
    @EnvironmentObject var shop: Shop
    @State private var isAinmating: Bool = false
    
    var body: some View {
        HStack {
            Button(action: {
                // search action
            }) {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAinmating ? 1 : 0)
                .offset(x: 0, y: isAinmating ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeIn(duration: 0.5)) {
                        isAinmating.toggle()
                    }
                })
            
            Spacer()
            
            Button (action: {
                // cart action
            }) {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
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

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
