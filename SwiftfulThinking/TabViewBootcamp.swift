//
//  TabViewBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 12/08/23.
//

import SwiftUI

struct TabViewBootcamp: View {
    @State var view: Int = 0
    
    // 2nd Tab View type .page
    let icons: [String] = [
        "house.fill", "heart.fill","person.fill","globe"
    ]
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(40)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.black]),
                           center: .center,
                           startRadius: 5, endRadius: 350)
        )
        .frame(height: 300)
        .tabViewStyle(.page)
        
        // 1st style of tab View
        
        //        TabView(selection: $view) {
        //            HomeView(view: $view)
        //                .tabItem {
        //                    Image(systemName: "house.fill")
        //                    Text("Home")
        //                }
        //                .tag(0)
        //
        //            BrowseView()
        //                .tabItem {
        //                    Image(systemName: "globe")
        //                    Text("Browse")
        //                }
        //                .tag(1)
        //
        //            Text("Profile page")
        //                .font(.headline)
        //                .tabItem {
        //                    Image(systemName: "person.fill")
        //                    Text("Profile")
        //                }
        //                .tag(2)
        //        }
        //        .accentColor(.red)
    }
}

struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var view: Int
    var body: some View {
        ZStack {
            Color.red.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home page")
                    .font(.headline)
                    .foregroundColor(.white)
                
                Button {
                    view = 2
                } label: {
                    HStack {
                        Text("Go to profile")
                        Image(systemName: "chevron.right")
                    }
                    .padding()
                    .font(.footnote)
                    .foregroundColor(.red)
                    .background()
                    .cornerRadius(10)
                }
                
            }
        }
        
    }
}

struct BrowseView: View {
    var body: some View {
        ZStack {
            Color.brown.edgesIgnoringSafeArea(.top)
            Text("Browse page!")
                .font(.headline)
                .foregroundColor(.white)
        }
    }
}
