//
//  InitializerBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 03/08/23.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color //1st type of initializing
    let count: Int
    let title: String
    //2nd type with init
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .orange{
            self.backgroundColor = .orange
            self.title = "Oranges"
        }else {
            self.backgroundColor = .red
            self.title = "Apples"
        }
    }
    
    //usage of enum
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 24) {
            
            HStack(spacing: 24) {
                InitializerBootcamp(count: 110, fruit: .orange)
                InitializerBootcamp(count: 120, fruit: .apple)
            }
            
            HStack(spacing: 24) {
                InitializerBootcamp(count: 10, fruit: .apple)
                InitializerBootcamp(count: 120, fruit: .orange)
            }
        } //call it initializer
    }
}
