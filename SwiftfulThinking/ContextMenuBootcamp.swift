//
//  ContextMenuBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 09/08/23.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    @State var color: Color = Color(#colorLiteral(red: 0.004859850742, green: 0.09608627111, blue: 0.5749928951, alpha: 1))
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Test")
                .font(.headline)
            Text("How to use context menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(.all, 30)
        .background(color.cornerRadius(30))
        .contextMenu {
            
            Button {
                color = .blue
            } label: {
                Text("Report")
            }
            
            Button {
                color = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                color = .red
            } label: {
                HStack{
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }


        }
            
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
