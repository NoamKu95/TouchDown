//
//  ContentView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 09/03/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        ZStack {
            VStack (spacing: 0) {
                NavigationBarView()
                    .padding()
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y:5)
                    
                Spacer()
                FooterView()
                    .padding(.horizontal)
            }
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
