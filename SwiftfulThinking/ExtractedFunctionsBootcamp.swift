//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 05/08/23.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var bgColor: Color = Color.purple
    var body: some View {
        ZStack{
            //Background
            bgColor
                .ignoresSafeArea()
            //main
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack{
            Text("Here is Title")
                .font(.title)
                .fontWeight(.semibold)
            Button {
                pressButton()
            } label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    func pressButton(){
        bgColor = .green
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
