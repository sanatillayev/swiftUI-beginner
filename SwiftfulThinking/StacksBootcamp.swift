//
//  StacksBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 02/08/23.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks => vertical stacks
    // Hstack => horizontal stacks
    // Zstack => z axis stact there is no spacing
    var body: some View {
        // 1st part
        
//        HStack(alignment: .center, spacing: 10, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        })
        
        
        // 2nd part practice the stacks inside the stacks
        
//        ZStack(alignment: .bottomLeading){
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 350, height: 500, alignment: .center)
//            VStack(alignment: .leading, spacing: 40){
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 150, height: 150)
//
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 100, height: 100)
//                HStack(alignment: .top) {
//                    Rectangle()
//                        .fill(Color.purple)
//                    .frame(width: 40, height: 40)
//
//                    Rectangle()
//                        .fill(Color.blue)
//                    .frame(width: 75, height: 75)
//
//                    Rectangle()
//                        .fill(Color.cyan)
//                        .frame(width: 30,height: 30)
//
//                }
//                .background(Color.white)
//                .padding(12)
//            }
//            .background(Color.black)
//            .padding(16)
//        }
        
        
        // 3rd part
        
//        VStack(alignment: .center, spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//
//            Text("Items in your card")
//                .font(.caption)
//                .foregroundColor(Color.gray)
//        }
        
        // 4rd part
        //  two types of shapes
        
        VStack(spacing: 50){
            //for complex layers use zstacks!!
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                Text("1")
                    .foregroundColor(Color.white)
                    .font(.title)
            }
            //for simple 2 3 layers use backgrounds!!
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center)
                )
        }
    }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}
