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
            ColorCircle(color: .red)
            ColorCircle(color: .yellow)
            ColorCircle(color: .green)
            Spacer()
            SwitcherColorButton(title: buttonTitle, action: {})
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



