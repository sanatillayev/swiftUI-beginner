//
//  SafeAreaBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 04/08/23.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
        /// 1st part
//        ZStack{
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            //foreground
//            VStack{
//                Text("Hello World!")
//                Spacer()
//            }
//        }
//        .frame(maxWidth: .infinity,maxHeight: .infinity)
//        .background(Color.red)
        
        /// 2nd part
        ScrollView{
            VStack{
                Text("Title goes here")
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal,16)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.white)
                        .frame(height:150)
                        .padding(20)
                        .shadow(radius: 10)
                }
            }
        }
        .background(
            Color.red
//                .edgesIgnoringSafeArea(.all)//old
                .ignoresSafeArea(.all)
        )
                

        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
