//
//  BindingBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 05/08/23.
//

import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor: Color = Color.cyan
    @State var title: String = "Dont press me"
    
    var body: some View {
        ZStack{
            //bg
            backgroundColor
                .ignoresSafeArea()
            
            
            //button
            VStack {
                
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}
struct ButtonView: View {
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = .orange
    @Binding var title: String
    var body: some View{
        Button {
            backgroundColor = .orange
            buttonColor = .cyan
            title = "WTF why r u pressed fucker"
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}
struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
