//
//  BackgroundsAndOverlaysBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 27/07/23.
//

import SwiftUI

struct BackgroundsAndOverlaysBootcamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(
        //1st part
        //                Color.red
        //                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
        
        //2nd part inside background above 1st part
        //                Circle()
        //                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100, height: 100, alignment: .center)
        //
        //            )
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 120, height: 120, alignment: .center)
        //                )
        
        //3rd part
        //        Circle()
        //            .fill(Color.red)
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Text("1")
        //                   .font(.largeTitle)
        //                    .foregroundColor(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.purple)
        //                    .frame(width: 120,height: 120)
        //            )
        
        // 4th part
        
        //        Rectangle()
        //            .frame(width: 200, height: 200,alignment: .center)
        //            .overlay(
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 100, height: 100),
        //                alignment: .topTrailing
        //            )
        //            .background(
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 300, height: 300),
        //                alignment: .topTrailing
        //            )
        
        // 5th part
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)),Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 1))]),
                                       startPoint: .bottomLeading,
                                       endPoint: .topTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 0.620343543)), radius: 10, x: 0, y: 10)
                    .overlay(
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("6")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color(#colorLiteral(red: 0, green: 0.5628422499, blue: 0.3188166618, alpha: 0.620343543)), radius: 10, x: 5, y: 5)
                        ,alignment: .bottomTrailing)
            )
        
        
        
        
    }
}

struct BackgroundsAndOverlaysBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundsAndOverlaysBootcamp()
    }
}
