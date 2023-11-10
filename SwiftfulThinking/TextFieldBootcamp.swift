//
//  TextFieldBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 09/08/23.
//

import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    var body: some View {
        NavigationView {
            VStack{
                TextField("Enter username", text: $textFieldText)
    //                .textFieldStyle(.automatic)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .font(.headline)
                Button {
                    if isTextAppropriate(){
                        saveText()
                    }
                } label: {
                    Text("Save")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background( isTextAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!isTextAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                        .padding(.vertical, 8)
                }
                
                Spacer()
                
            }
            .padding()
            .navigationTitle(Text("TextField Sample"))
        }
        

        
    }
    func isTextAppropriate() -> Bool{
        if textFieldText.count >= 3{
            return true
        }else {return false}
    }
    
    func saveText(){
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
