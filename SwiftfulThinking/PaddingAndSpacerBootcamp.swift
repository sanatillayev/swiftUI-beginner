//
//  PaddingAndSpacerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 03/08/23.
//

import SwiftUI

struct PaddingAndSpacerBootcamp: View {
    var body: some View {
        // 1st part usage of padding with all sides
//        Text("Hello, World! I will be Sr. iOS developer soon!!!")
//            .background(Color.yellow)
//            //.padding()
//            .padding(.all, 12)
//        // instead of .all (.vertical .horizontal .top .bottom .leading .trailing)
//            .background(Color.blue)
//
        
        //2nd part padding usage
//        Text("Hello World!")
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//           //.background(Color.red)
//            .padding(.leading, 32)
        
        //3rd part  padding
        VStack(alignment: .leading, spacing: 16) {
            Text("Hello SwiftUI!!")
                .font(.largeTitle)
            .fontWeight(.semibold)
            
            Text("this is a description of what we will do next, It is multiple lines and we will allign the text to the leading edge. Now it looks pretty good wooow")
                //.font(.callout)
               // .fontWeight(.medium)
               // .multilineTextAlignment(.leading)
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(15)
                .shadow(
                    color: .black.opacity(0.2),
                    radius: 10,
                    x: 4, y: 10
                )
        )
        .padding(.horizontal,12)
            
    }
}

struct PaddingAndSpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingAndSpacerBootcamp()
    }
}
