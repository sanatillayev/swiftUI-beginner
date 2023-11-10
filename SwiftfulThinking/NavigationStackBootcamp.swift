//
//  NavigationStackBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 18/08/23.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    
    let fruits: [String] = [
        "Apple", "Banana","Orange"
    ]
    
    @State private var stackPath: [String] = []
    var body: some View {
        
        // Navigation Stack !!! very important to improve performance of app with not loading all data behind scene
        
        NavigationStack(path: $stackPath) {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("Use navigationDestination ")
                    
                    Button("Super segue!") {
                        // enters to the 3rd page inside the pages
                        // pushes multiple screens at onc e into the path
                        // NavStack >> Apple >> Watermelon >> Mango
                        stackPath.append(contentsOf: ["Apple","Watermelon", "Mango"])
                    }
                    
                    ForEach(fruits, id: \.self) {
                        fruit in NavigationLink(value: fruit) {
                            Text("Click me: \(fruit)")
                        }
                    }
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                }
            }
            .navigationDestination(for: String.self, destination: { fruit in
                Text("Another screen: \(fruit)")
            })
            .navigationTitle("NavigationStack")
            .navigationDestination(for: Int.self) { value in
                mySecondScreen(value: value)
            }
        }
        
    }
}
struct mySecondScreen: View {
    let value: Int
    init(value: Int) {
        self.value = value
        print("INIT SCREEN: \(value)")
    }
    var body: some View {
        Text("2nd screen: \(value)")
    }
}
struct NavigationStackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackBootcamp()
    }
}
