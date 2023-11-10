//
//  BadgeBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 17/08/23.
//

import SwiftUI

struct BadgeBootcamp: View {
    var body: some View {
        TabView {
            ZStack {
                Color.red
            }
            
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    
                    Image(systemName: "heart.fill")
                    Text("Favorite")
                }
            Color.orange
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "cross.fill")
                }
                .badge("") // here maybe string
            Color.blue
                .edgesIgnoringSafeArea(.top)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                .badge(5)
        }
        
        List(content: {
            Text("Hello world!")
                .badge("New world")
            Text("Hello world!")
            Text("Hello world!")
            Text("Hello world!")

        })

        
    }
}

struct BadgeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBootcamp()
    }
}
