//
//  ViewThatFits.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 04/03/24.
//

import SwiftUI

struct ViewThatFitsBootcamp: View {
    var body: some View {
        ZStack {
            ViewThatFits(in: .horizontal){
                Text("Longest ever made text with placeholder Hello, World! ")
                Text("Long text with placeholder Hello, World! ")
                Text("short Hello, World! ")
            }
        }
    }
}

#Preview {
    ViewThatFitsBootcamp()
}
