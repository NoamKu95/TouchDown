//
//  DetailsNavigationBarView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 16/03/2023.
//

import SwiftUI

struct DetailsNavigationBarView: View {
    var body: some View {
        HStack {
            Button(action: {
                //
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
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
