//
//  SwitcherColorButton.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

struct SwitcherColorButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .clipShape(Capsule())
        .overlay(Capsule().stroke(Color.black, lineWidth: 5))
    
    }
}

struct SwitcherColorButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitcherColorButton(title: "Start", action: {})
    }
}
