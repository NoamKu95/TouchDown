//
//  FavoriteIndicatorView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct FavoriteIndicatorView: View {
    
    @State private var isAddedToFavorites: Bool = false
    
    var body: some View {
        Button(action: {
            hepticFeedback.impactOccurred()
            isAddedToFavorites.toggle()
        }) {
            Image(systemName: isAddedToFavorites ? "heart.fill" : "heart")
                .foregroundColor(.pink)
                .font(.system(.title, design: .rounded))
                .imageScale(.large)
        }
    }
}

struct FavoriteIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteIndicatorView()
    }
}
