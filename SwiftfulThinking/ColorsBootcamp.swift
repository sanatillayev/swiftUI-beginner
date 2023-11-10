//
//  ColorsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 25/07/23.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
//                Color.primary
//                Color(#colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1))
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColors")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 4.0)
            .shadow(color: Color("CustomColors").opacity(0.75), radius: 20, x: 8, y: 16)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
