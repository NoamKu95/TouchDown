//
//  FavoriteIndicatorView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct FavoriteIndicatorView: View {
    
    
    
    var body: some View {
        Button(action: {
            //
        }) {
            Image(systemName: "heart.circle")
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
