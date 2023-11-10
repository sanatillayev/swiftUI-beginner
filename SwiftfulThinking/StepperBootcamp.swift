//
//  StepperBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 10/08/23.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepper: Int = 10
    @State var widthR: CGFloat = 0

    var body: some View {
        VStack{
            Stepper("Stepper value \(stepper)", value: $stepper)
                .padding()
            
            
            Stepper("Stepper value") {
                increment(amount: 10)
            } onDecrement: {
                increment(amount: -10)
            }
            .padding()
            RoundedRectangle(cornerRadius: 16)
                .frame(width: 100 + widthR, height: 100)
            Spacer()
        }
    }
    func increment(amount: CGFloat){
        withAnimation(.easeInOut) {
            widthR += amount
        }
       
        
    }
}

struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
