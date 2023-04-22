//
//  ContentView.swift
//  TrafficLight SwiftUI
//
//  Created by Gleb Gunin on 22.04.2023.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var buttonTitle = "Start"
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch currentLight {
        case .red:
            greenLight = lightOff
            redLight = lightOn
            currentLight = .yellow
        case .yellow:
            redLight = lightOff
            yellowLight = lightOn
            currentLight = .green
        case .green:
            yellowLight = lightOff
            greenLight = lightOn
            currentLight = .red
        }
    }
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                LightLogoView(color: .red, alpha: redLight)
                LightLogoView(color: .yellow, alpha: yellowLight)
                LightLogoView(color: .green, alpha: greenLight)
                
                Spacer()
                
                NextColorButton(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
