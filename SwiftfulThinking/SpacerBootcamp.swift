//
//  SpacerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 03/08/23.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack(spacing: 0){
//            //1st part
//            //spacer has minimum default length 10
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//
//            Spacer()
//                .frame(height: 10)
//                .background(Color.orange)
//        }
//        .background(Color.blue)
        
        
        VStack {
            HStack{
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")

            }
            .padding(.horizontal)
            .font(.title)
        .background(Color.green)
            
            Spacer()
            Rectangle()
                .frame(height: 64)
                
        }
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
