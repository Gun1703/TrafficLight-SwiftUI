//
//  LightLogoView.swift
//  TrafficLight SwiftUI
//
//  Created by Gleb Gunin on 22.04.2023.
//

import SwiftUI

struct LightLogoView: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
            Circle()
                .foregroundColor(color)
                .frame(width: 130, height: 130)
                .opacity(alpha)

    }
}

struct LightLogoView_Previews: PreviewProvider {
    static var previews: some View {
        LightLogoView(color: .red, alpha: 0.3)
    }
}
