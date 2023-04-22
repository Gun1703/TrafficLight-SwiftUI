//
//  NextColorButton.swift
//  TrafficLight SwiftUI
//
//  Created by Gleb Gunin on 22.04.2023.
//

import SwiftUI

struct NextColorButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 180, height: 50)
        .background(Color.blue)
        .cornerRadius(15)
    }
}

struct NextColorButton_Previews: PreviewProvider {
    static var previews: some View {
        NextColorButton(title: "Start", action: {})
    }
}
