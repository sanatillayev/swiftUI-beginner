//
//  SwiftUIView.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 05/08/23.
//

import SwiftUI

struct SwiftUIView: View {
    
    @State var isAnimated: Bool = false
    var body: some View {
        VStack{
            
            Button("Button") {
                withAnimation(
                    Animation
                        .default
                ){
                    isAnimated.toggle()
                }
            }
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 10)
                .fill(isAnimated ? Color.orange : Color.red)
                .frame(
                    width: isAnimated ? 120 : 100,
                    height: isAnimated ? 120 : 100)
                .rotationEffect(Angle(degrees: isAnimated ? 36000 : 0))

                .offset(y: isAnimated ? 20 : -20)
            Spacer()

        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
