//
//  TernaryBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 05/08/23.
//

import SwiftUI

struct TernaryBootcamp: View {
    @State var isStartingState: Bool=false
    
    var body: some View {
        VStack{
            Button {
                isStartingState.toggle()
            } label: {
                Text(isStartingState ? "Unpress" : "Press")
            }
            RoundedRectangle(cornerRadius: 20)
                .fill(isStartingState ? Color.cyan : Color.blue)
                .frame(
                    width: isStartingState ? 100:120,
                    height: isStartingState ? 100:120)

        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
