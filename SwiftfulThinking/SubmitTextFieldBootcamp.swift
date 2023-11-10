//
//  SubmitTextFieldBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 18/08/23.
//

import SwiftUI

struct SubmitTextFieldBootcamp: View {
    @State private var text: String = ""
    var body: some View {
        VStack {
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Print in console")
                }
                .submitLabel(.continue)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Print in console")
                }
                .submitLabel(.send)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Print in console")
                }
                .submitLabel(.go)
            
            TextField("Placeholder...", text: $text)
                .onSubmit {
                    print("Print in console")
                }
                .submitLabel(.next)
        }
    }
}

struct SubmitTextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SubmitTextFieldBootcamp()
    }
}
