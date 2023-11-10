//
//  ScrollViewBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 04/08/23.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        //1st part vertical
//        ScrollView{
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(height: 300)
//
//                }
//            }
//        }
        
        
        // 2nd part horizontal
//        ScrollView(.horizontal, showsIndicators: true) {
//            HStack{
//                ForEach(0..<100) { index in
//                    Circle()
//                        .fill(Color.blue)
//                        .frame(width: 300, height: 300)
//                }
//            }
//        }
        
        
        ScrollView{
            LazyVStack{
                ForEach(0..<100) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack{
                            ForEach(0..<100) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200,height: 150, alignment: .center)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    })
                }
            }
        }
    }
}

struct ScrollViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootcamp()
    }
}
