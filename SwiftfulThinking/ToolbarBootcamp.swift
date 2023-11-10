//
//  ToolbarBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 21/08/23.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths) {
            ZStack {
                Color.gray.ignoresSafeArea()
                    .opacity(0.12)
                
                ScrollView {
                    TextField("Placeholder..", text: $text)
                    
                    ForEach(1..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
            .toolbar {
                // default trailing
//                ToolbarItem {
//                    Image(systemName: "heart.fill")
//                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "gear")
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "heart.fill")
                }
//                ToolbarItem(placement: .cancellationAction) {
//                    Text("cancel")
//                }
                
//                ToolbarItem(placement: .confirmationAction) {
//                    Text("confirm")
//                }
                
                // center == principal
//                ToolbarItem(placement: .principal) {
//                    Text("confirm")
//                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
                
                
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
        
    }
}

struct ToolbarBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarBootcamp()
    }
}
