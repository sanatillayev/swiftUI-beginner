//
//  ButtonsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 04/08/23.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "this is tite"
    var body: some View {
        
        VStack(spacing: 24){
            Text(title)
            
            //button with text
            Button("Press me"){
                self.title = "button was pressed"
            }
            
            //regular button
            Button {
                self.title = "cancel is active"
            } label: {
                Text("Cancel".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            }
            
            // button circle
            
            Button {
                self.title = "Like button pressed"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(.red)
                    }
            }
            
            //outlined button
            
            Button {
                self.title = "Outlined button pressed"
            } label: {
                Text("Skip".uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            }
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
