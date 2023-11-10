//
//  NavigationViewBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView{
                NavigationLink("Hello next screen!") {
//                    Text("Helloooo i am 2nd screen")
                    MyOtherScreen()
                }
                Text("Helloo1")
                Text("Helloo2")
                Text("Helloo3")
                    .navigationTitle("I am title")
                    .navigationBarItems(
                        leading:
                            HStack {
                                Image(systemName: "chevron.left")
                                Image(systemName: "flame.fill")
                            },
                        trailing:
                            NavigationLink(
                                destination: MyOtherScreen(),
                                label: {
                                    Image(systemName: "chevron.right")
                                })
                            .accentColor(.red)
                    )
                
//                    .navigationBarTitleDisplayMode(.automatic) //.inline
//                    .navigationBarHidden(true)
            }
        }
    }
}
struct MyOtherScreen: View{
    @Environment(\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationBarTitle("Green screen")
                .navigationBarHidden(true)
            
            VStack {
                Spacer()

                Button("Back") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                Spacer()
                
                NavigationLink("Next screen", destination: Text("3rd screen"))
            }
                
        }
    }
}
struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
