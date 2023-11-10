//
//  TextBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 24/07/23.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, Shut the f*ck up yall We just started new Course of Swift ! ?ssdLorem Ipsum  Lorem Ipsum Hello, Shut the fuck up yall We just started new Course of Swift ! ?ssdLorem Ipsum  Lorem Ipsum ")
            .font(.system(size: 20, weight: .semibold, design: .serif))
//            .fontWeight(.black)
//            .italic()
//            .underline()
//            .strikethrough(true,color: .indigo)
            .kerning(1.4)
            .padding(/*@START_MENU_TOKEN@*/.horizontal, 9.0/*@END_MENU_TOKEN@*/)
            .baselineOffset(0)
            .foregroundColor(.red)
            .frame(width: 340,height: 300, alignment: .topTrailing)
            .minimumScaleFactor(6.0)
            
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
