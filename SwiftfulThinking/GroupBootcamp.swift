//
//  SwiftUIView.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 21/08/23.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing:20) {
            Text("Hello, World!")
            Text("Hello, World!")

            Group {
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .foregroundColor(.yellow)
            .font(.headline)
            

        }
        .foregroundColor(Color.red)
        .font(.title
        )
    }
}

struct GroupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GroupBootcamp()
    }
}
