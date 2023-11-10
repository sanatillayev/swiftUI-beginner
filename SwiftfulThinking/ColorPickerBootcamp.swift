//
//  ColorPickerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 10/08/23.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var bGcolor: Color = .blue
    var body: some View {
        ZStack{
            bGcolor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $bGcolor,
                        supportsOpacity: true)
            .padding()
            .font(.headline)
            .background(Color.white.opacity(0.4))
            .cornerRadius(10)
            .padding()
        }
        
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
