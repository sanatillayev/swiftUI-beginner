//
//  AnyLayoutBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 10/11/23.
//

import SwiftUI
// https://useyourloaf.com/blog/size-classes
struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    var body: some View {
        VStack(spacing: 20) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ?
            AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Aaaa")
                Text("Bbbb")
                Text("Cccc")

            }

        }
    }
}

#Preview {
    AnyLayoutBootcamp()
}
