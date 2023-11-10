//
//  PopoverBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//


//sheets
//animations
//transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            
            // METHOD 1-SHEET
//            .sheet(isPresented: $showNewScreen) {
//                NewScreen()
//            }
            
            // METHOD 2 - TRANSITION
//            ZStack{
//                if showNewScreen{
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(Animation.spring())
//                }
//            }
//            .zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showNewScreen)
            
        }
    }
}

struct NewScreen: View{
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showNewScreen: Bool
    var body: some View{
        ZStack(alignment: .topTrailing){
            Color.purple
                .edgesIgnoringSafeArea(.all)
            Button {
//                presentationMode.wrappedValue.dismiss()
                showNewScreen.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(24)
            }

        }
    }
}
struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
