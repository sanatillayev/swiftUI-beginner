//
//  TapGestureBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 14/08/23.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    var body: some View {
        VStack(spacing: 20){
            RoundedRectangle(cornerRadius: 25)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.orange)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(.blue)
                    .cornerRadius(25)
            }
            // MARK: MAIN onTapGesture usage
            // button with tapGesture
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
            // double tap TO toggle isSelected
                .onTapGesture(count: 1) {
                    isSelected.toggle()
                }

        }
        .padding()
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
