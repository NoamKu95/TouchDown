//
//  SizesView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct SizesView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        VStack (alignment: .trailing, spacing: 3) {
            Text("Sizes")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(colorGray)
            
            HStack (alignment: .center, spacing: 5) {
                ForEach(sizes, id: \.self) { size in
                    Button(action: {
                        //
                    }) {
                        Text(size)
                            .font(.footnote)
                            .fontWeight(.black)
                            .foregroundColor(.gray)
                            .frame(width: 28, height: 28, alignment: .center)
                            .background(Color.white.cornerRadius(5))
                            .background(
                                RoundedRectangle(cornerRadius: 5).stroke(colorGray, lineWidth: 2)
                            )
                    }
                }
            }
        }
    }
}

struct SizesView_Previews: PreviewProvider {
    static var previews: some View {
        SizesView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
