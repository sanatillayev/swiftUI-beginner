//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    @State var isAnimated: Bool = false
    let timing: Double = 10
    var body: some View {
        VStack{
            Button("Button") {
                isAnimated.toggle()
            }
            
            RoundedRectangle(cornerRadius: 24)
                .frame(
                    width: isAnimated ? 100 : 330, height: 80)
                .animation(.spring(
                    response: 0.5,  /* response time best value 0.5 */
                    dampingFraction: 0.6,  // best value is 0.6 0.7
                    blendDuration: 1.0), value: isAnimated)
//                .animation(Animation.linear(duration: timing), value: isAnimated)
            
//            RoundedRectangle(cornerRadius: 24)
//                .frame(
//                    width: isAnimated ? 100 : 330,
//                    height: 80)
//                .animation(Animation.easeIn(duration: timing), value: isAnimated)
//
//            RoundedRectangle(cornerRadius: 24)
//                .frame(
//                    width: isAnimated ? 100 : 330,
//                    height: 80)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimated)
//
//            RoundedRectangle(cornerRadius: 24)
//                .frame(
//                    width: isAnimated ? 100 : 330,
//                    height: 80)
//                .animation(Animation.easeOut(duration: timing), value: isAnimated)
            
            
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
