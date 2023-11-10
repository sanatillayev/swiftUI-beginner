//
//  NativePopoverBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 10/11/23.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    @State private var showPopover: Bool = false
    @State private var feedbackOptions: [String] = [
        "Very good 🥳",
        "Average 🙂",
        "Very bad 😡"
    ]
    var body: some View {
        ZStack(content: {
            Color.gray.ignoresSafeArea()
            Button("Provide feedback") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                VStack(alignment: .leading, spacing: 12, content: {
                    ForEach(feedbackOptions, id: \.self) { feedback in
                        Button(feedback) {
                            
                        }
                        
                        if feedback != feedbackOptions.last {
                            Divider()
                        }
                    }
                    
                })
                .padding(20)
                .presentationCompactAdaptation(horizontal: .popover, vertical: .sheet)


            })
        })
    }
}

#Preview {
    NativePopoverBootcamp()
}
