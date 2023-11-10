//
//  SafeAreaInsetBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 21/08/23.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack {
            List(0..<10) { _ in
                Rectangle()
                    .frame( height: 300)
            }
            .navigationTitle("Safe Area Insets")
            .navigationBarTitleDisplayMode(.inline)
//            .overlay (
//                Text("Hi")
//                    .frame(maxWidth: .infinity)
//                    .background(Color.yellow)
//                , alignment: .bottom
//            )
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("Hi")
//                    .frame(maxWidth: .infinity)
                    .padding(.all,25)
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
                    .clipShape(Circle())
                    .padding()
            }
            
            .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                Text("Hi")
                    .frame(maxWidth: .infinity)
//                    .padding(.all,25)
                    .background(Color.yellow.edgesIgnoringSafeArea(.bottom))
//                    .clipShape(Circle())
//                    .padding()
            }
        }
    }
}

struct SafeAreaInsetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaInsetBootcamp()
    }
}
