//
//  SliderBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 10/08/23.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 10
    @State var color: Color = .red
    var body: some View {
        VStack{
            Text(
                "Slider value:"
            )
            // important when use slider
            Text(
                String(format: "%.0f", sliderValue)
            )
            .foregroundColor(color)
            //            Slider(value: $sliderValue)
            //            Slider(value: $sliderValue, in: 1...100)
            //            Slider(value: $sliderValue, in: 1...10, step: 1.0)
            
            // full slider
            Slider(
                value: $sliderValue,
                in: 1...15,
                step: 1.0) { 
                    Text("Title") // not visible
                } minimumValueLabel: {
                    Text("1")
                } maximumValueLabel: {
                    Text("15")
                } onEditingChanged: { _ in
                    color = .green
                }
            
            
        }
        .padding()
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
