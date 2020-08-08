//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

enum CurrentColor {
    case red
    case yellow
    case green
}

struct ContentView: View {
   
    @State private var buttonTitle = "Start"
    @State private var currentColor = CurrentColor.red
    
    private func switchColor() {
        switch currentColor {
        case .red:
            currentColor = .yellow
        case .yellow:
            currentColor = .green
        case .green:
            currentColor = .red
        }
    }
    
}


extension ContentView {
    var body: some View {
        VStack {
            ZStack {
            Capsule()
                .frame(width: 150, height: 400)
                VStack {
                    ColorCircle(color: .red,
                                opacity: currentColor == .red ? 1 : 0.3)
                    ColorCircle(color: .yellow,
                                opacity: currentColor == .yellow ? 1 : 0.3)
                    ColorCircle(color: .green,
                                opacity: currentColor == .green ? 1 : 0.3)
                }
            }
            .padding(.bottom, -10)
            
            Rectangle()
                .frame(width: 20)
            
            
            SwitcherColorButton(title: buttonTitle, action: {
                self.buttonTitle = "Next"
                self.switchColor()
            })
            
        }
        .padding(.bottom, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



