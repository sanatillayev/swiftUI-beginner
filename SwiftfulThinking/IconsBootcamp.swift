//
//  IconsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 27/07/23.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "square.and.arrow.up.trianglebadge.exclamationmark")
            .resizable()
            .renderingMode(.original) // multicolor
            .aspectRatio(contentMode: .fill)
        //            .scaledToFit()
        //            .scaledToFill()
        //            .font(.largeTitle)
        //            .font(.system(size: 350))
        //            .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1)))
            .frame(width: 200, height:300)
        //            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
