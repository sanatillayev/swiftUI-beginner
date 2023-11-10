//
//  BackgroundMaterial.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 17/08/23.
//

import SwiftUI

struct BackgroundMaterial: View {
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            

        }
        .ignoresSafeArea()
        .background(
            Image("me")
                .resizable()
                .scaledToFill()
        )
    }
}

struct BackgroundMaterial_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterial()
    }
}
