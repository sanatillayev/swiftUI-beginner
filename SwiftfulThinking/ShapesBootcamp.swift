//
//  ShapesBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 24/07/23.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle()
//          Ellipse()
//        Capsule()
        RoundedRectangle(cornerRadius: 24 )
            .fill(Color.green)
//            .frame()
//            .fill(Color.green)
//            .foregroundColor(.purple)
//            .stroke()
//            .stroke(Color.red, lineWidth: 12)
//            .stroke(style: StrokeStyle(lineWidth: 12,lineCap: .round, dash: [32]))
//            .trim(from: 0.4,to: 4.0)
//            .padding(.top)

            .frame(width: 120.0, height: 60)
    }
    

}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
