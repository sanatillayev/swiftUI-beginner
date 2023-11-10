//
//  DarkModeBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 12/08/23.
//

import SwiftUI

struct DarkModeBootcamp: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This is primary color")
                        .foregroundColor(.primary)
                    
                    Text("This is secondary color")
                        .foregroundColor(.secondary)
                    
                    Text("This is white color")
                        .foregroundColor(.white)
                    
                    Text("This is black color")
                        .foregroundColor(.black)
                    
                    Text("This is red color")
                        .foregroundColor(.red)
                    
                    Text("This is GLOBALLY adaptive color")
                        .foregroundColor(Color("AdaptiveColors"))
                    
                    Text("This is LOCALLY adaptive color")
                        .foregroundColor(Color(colorScheme == .light ? .brown : .yellow))
                }
                
            }
            .navigationTitle("Dark mode bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
            .preferredColorScheme(.dark)
        DarkModeBootcamp()
            .preferredColorScheme(.light)
    }
}
