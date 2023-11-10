//
//  AnimationsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//

import SwiftUI

struct AnimationsBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            Button("Button") {
//                withAnimation(
//                    Animation
//                        .default
//                        .delay(0.2)
//                        .repeatCount(11, autoreverses: true)
//  //                        .repeatForever(autoreverses: true)
//                )
//                {
                    isAnimated.toggle()
//                }
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 300 : 20)
                .fill(isAnimated ? .black : .black)
                .frame(
                    width: isAnimated ? 350 : 120,
                    height: isAnimated ? 80 : 40)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : -360))
                .offset(x: isAnimated ? 0: -0 , y: isAnimated ? 340 : -340)
                .animation( .spring(),
//                    Animation
//                    .default
//                    .delay(0.2)
//                    .repeatCount(11, autoreverses: true),
                    value: isAnimated
                )
            Spacer()
        }
    }
}

struct AnimationsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsBootcamp()
    }
}
