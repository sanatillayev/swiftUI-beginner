//
//  ForEachBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 04/08/23.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["hi","ho","hu","wtf","stfu","fy"]
    let myStr: String = "Hello f*cking world!!!"
    var body: some View {
        //1st part
//        VStack{
//            ForEach(0..<10) { index in
//  //                Text("Hi: "+" my index is = \(index)")
//                HStack {
//                    Circle()
//                        .frame(width: 30,height: 30)
//                    Text("Index: \(index)")
//                }
//            }
//        }
        
        
        //2nd part2
        VStack(alignment: .leading, spacing: 4){
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) : its index in array \(index)")
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
