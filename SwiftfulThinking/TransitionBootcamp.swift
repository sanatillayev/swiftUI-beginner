//
//  TransitionBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 07/08/23.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom){
            
            VStack{
                Button("Button") {
                    showView.toggle()
                    
                }
                Spacer()
            }
            if showView{
                RoundedRectangle(cornerRadius: 30)
                    .frame( width: 320)
                    .frame(height: UIScreen.main.bounds.height*0.5)
    //                .opacity(showView ? 1.0 : 0.0)
    //                .animation(Animation.easeInOut, value: showView)
//                    .transition(AnyTransition.scale.animation(.easeInOut)) //1st type
//                    .animation(.easeInOut)
                    .transition(.asymmetric(
                        insertion: .move(edge: .trailing).combined(with: .opacity),
                        removal: .scale.combined(with: .opacity))
                    )
                    .padding(.bottom, 40)
//                    .animation(.easeInOut, value: showView) // 2nd type
                
                //we must use .transition and .animation when we are creating new item in view  && when we are changing smth in view wich already exist we must use the method traditional .withAnimation()
                
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TransitionBootcamp()
        }
    }
}
