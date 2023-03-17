//
//  SheetTopView.swift
//  TouchDown
//
//  Created by Noam Kurtzer on 17/03/2023.
//

import SwiftUI

struct SheetTopView: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}

struct SheetTopView_Previews: PreviewProvider {
    static var previews: some View {
        SheetTopView()
    }
}
