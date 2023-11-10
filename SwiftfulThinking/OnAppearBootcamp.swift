//
//  OnAppearBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 14/08/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    @State var myText: String="Start text."
    @State var count: Int = 0
    var body: some View {
        
        NavigationView {
            ScrollView {
                
                Text(myText)
                
                LazyVStack() {
                    ForEach(1..<50) { _ in
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 350, height: 400)
                            .padding()
                            .onAppear {
                                count+=1
                            }
                        
                    }
                }
            }
            
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now()+5){
                    myText = "This is text after onAppear"
                }
            })
            
            // now we cant see this text coz it will called only when view leaves the screen
            // and its used to clean smth or end/cancel some function which is running
            // (when user leaves the screen it will work )
            
            .onDisappear(perform: {
                myText = "Ending text."
            })
            .navigationTitle("OnAppear: \(count)")
        }
        
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
