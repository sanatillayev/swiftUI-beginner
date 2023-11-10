//
//  AnimationUpdatedBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 21/08/23.
//

import SwiftUI

struct AnimationUpdatedBootcamp: View {
    @State var animation1: Bool = false
    @State var animation2: Bool = false
    var body: some View {
        VStack(spacing:20) {
            Button("Action 1") {
                animation1.toggle()
            }
            
            Button("Action 1") {
                animation2.toggle()
            }
            ZStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .frame(maxWidth: .infinity, alignment: f ? .trailing : .leading)
                    .background(Color.green)
                    .frame(maxHeight: .infinity, alignment: animation2 ? .bottom : .top)
                    .background(Color.orange)
            }
            .animation(.linear(duration: 3), value: animation1)
            .animation(.linear(duration: 3), value: animation2)

            
        }
    }
}

struct AnimationUpdatedBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdatedBootcamp()
    }
}
