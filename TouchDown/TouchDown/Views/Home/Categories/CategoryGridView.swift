//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 11/03/2023.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                Section(
                    header: CategorySectionView(rotateClockWise: false),
                    footer: CategorySectionView(rotateClockWise: true)) {
                    ForEach(categoriesList) { category in
                        CategoryItemView(categoryItem: category)
                    }
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 20)
        }
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.device)
            .padding()
            .background(colorBackground)
    }
}
