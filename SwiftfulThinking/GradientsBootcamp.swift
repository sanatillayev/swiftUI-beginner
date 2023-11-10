//
//  GradientsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 26/07/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(
//                gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))]),
//                               startPoint: .topLeading,
//                               endPoint: .bottom)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)),Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))]),
//                    center: .topTrailing,
//                    startRadius: 5,
//                    endRadius: 200)
//            )
                AngularGradient(
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4500938654, green: 0.9813225865, blue: 0.4743030667, alpha: 1)),Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))]),
                    center: .bottomTrailing,
                    angle: .degrees(213)))
        
            .frame(width: 325, height: 325)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
