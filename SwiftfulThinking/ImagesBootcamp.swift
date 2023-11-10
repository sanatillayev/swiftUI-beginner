//
//  ImagesBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 27/07/23.
//

import SwiftUI

struct ImagesBootcamp: View {
    var body: some View {
        Image("d")
            .resizable()
            .scaledToFill()
        //            .aspectRatio(contentMode: .fit)//fit or fill + .clipped()
            .frame(width: 350, height:350)
        //            .foregroundColor(.green)
        //            .clipped()
        //            .cornerRadius(175)
            .clipShape(
                //                Circle()
                //                Ellipse()
                RoundedRectangle(cornerRadius:30)
            )
    }
}

struct ImagesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImagesBootcamp()
    }
}
