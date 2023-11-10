//
//  SheetsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                secondScreen()
//            })  // full screen
            
            .sheet(isPresented: $showSheet, content: {
                // DONT ADD CONDITIONAL LOGIC HERE
                secondScreen()
            }) // dont add if else condtions to use multiple sheets
        }
    }
}

struct secondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode  //close popup
    
    var body: some View{
        ZStack(alignment: .topTrailing){
            
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            
            Button {
                presentationMode.wrappedValue.dismiss() // close popup
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        secondScreen()
    }
}
