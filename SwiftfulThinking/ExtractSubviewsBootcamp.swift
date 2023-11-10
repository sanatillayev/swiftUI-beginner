//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 05/08/23.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack{
            
            //bg
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            // main
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Peaches", color: .cyan, count: 12)
            MyItem(title: "Color teal", color: .teal, count: 34)
            MyItem(title: "Color mint", color: .mint, count: 34)
        }
    }
    
}

struct ExtractSubviewsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootcamp()
    }
}

struct MyItem: View {
    let title: String
    let color: Color
    let count: Int
    var body: some View {
        VStack{
            Text("\(title)")
                .font(.headline)
                .fontWeight(.medium)
            Text("\(count)")
                .underline()
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
