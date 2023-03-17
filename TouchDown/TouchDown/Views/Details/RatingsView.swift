//
//  RatingsView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 3) {
            Text("Ratings")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(colorGray)
            
            HStack (alignment: .center, spacing: 3) {
                ForEach(1...5, id: \.self) { item in
                    Button(action: {
                        //
                    }) {
                        Image(systemName: "star.fill")
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(colorGray.cornerRadius(5))
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
