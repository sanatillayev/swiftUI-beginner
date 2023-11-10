//
//  GridBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 04/08/23.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
//        GridItem(.fixed(50), spacing: nil, alignment: nil),

        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 0, alignment: nil),

//        GridItem(.adaptive(minimum: 50, maximum: 100), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView{
            
            Rectangle()
                .fill(Color.gray.opacity(0.3))
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) {
                    
                    Section(header:
                                Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                            .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                            .frame(height: 150)
                        }
                    }
                }
        }
        
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
