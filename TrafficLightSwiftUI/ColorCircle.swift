//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Nikita on 8/8/20.
//  Copyright © 2020 Nikita Begletskiy. All rights reserved.
//

import SwiftUI

struct ColorCircle: View {
    let color: UIColor
    var opacity: Double
    
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .opacity(opacity)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
