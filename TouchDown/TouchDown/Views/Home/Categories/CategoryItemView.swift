//
//  CategoryItemView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import SwiftUI

struct CategoryItemView: View {
    
    var categoryItem: Category
    
    var body: some View {
        Button(action: {
            // action
        }) {
            HStack (alignment: .center, spacing: 6) {
                Image(categoryItem.iconName)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)

                
                Text(categoryItem.categoryName.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }
    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(categoryItem: categoriesList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
