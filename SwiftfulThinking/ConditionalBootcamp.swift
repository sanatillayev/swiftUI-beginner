//
//  ConditionalBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 05/08/23.
//

import SwiftUI

struct ConditionalBootcamp: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            /// 2nd part isloading
            Button("IsLoading: \(isLoading.description)") {
                isLoading.toggle()
            }
            //for loading
            if isLoading{
                ProgressView()
            }else {
                
            }
            
            /// 1st part for condition
//            Button("Circle is \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle") {
//                showRectangle.toggle()
//            }
//            if showCircle{
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle{
//                Rectangle()
//                    .frame(width: 100, height: 100)
//                    .cornerRadius(10)
//            }
//            if !showCircle || !showRectangle {
//                RoundedRectangle(cornerRadius: 10)
//                    .frame(width: 200, height: 100)
//            }
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
