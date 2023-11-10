//
//  ContentView.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 24/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("iOS Devs")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.red)
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
