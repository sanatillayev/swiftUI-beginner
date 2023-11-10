//
//  FramesBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 27/07/23.
//

import SwiftUI

struct FramesBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(Color.blue)
        //            .frame(width: 300, height: 200, alignment: .center)
        //            .background(Color.red)
        
            .background(Color.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.red)
            .frame(height: 300)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.cyan)
        
        
        
    }
}

struct FramesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FramesBootcamp()
    }
}
