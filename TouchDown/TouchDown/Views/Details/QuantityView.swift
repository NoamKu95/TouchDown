//
//  QuantityView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct QuantityView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack (alignment: .center, spacing: 6) {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                    hepticFeedback.impactOccurred()
                }
            }) {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                    hepticFeedback.impactOccurred()
                }
            }) {
                Image(systemName: "plus.circle")
            }
        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
