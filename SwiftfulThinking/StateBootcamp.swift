//
//  StateBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 04/08/23.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            // background
            backgroundColor
                .ignoresSafeArea() // new type
            
            
            //content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title3)
            
                Text("Count: \(count)")
                    .font(.title2)
                    .underline()
                
                HStack(spacing: 20){
                    
                    Button("Button 1".uppercased()) {
                        backgroundColor = .blue
                        myTitle = "Button 1 was pressed"
                        count += 1
                    }
                    
                    Button("Button 2".uppercased()) {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count += 2

                    }
                }
            }
            .foregroundColor(.white)

        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
