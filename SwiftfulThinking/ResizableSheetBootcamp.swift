//
//  ResizableSheetBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 21/08/23.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium , .large])
//                .presentationDetents([.fraction(0.66)])// 50% ofScreen=0.5
                .presentationDetents([.large, .medium, .fraction(0.5), .height(300)], selection: $detents)
            // sheet indicator hidden with .presentationDragIndicator
                .presentationDragIndicator(.hidden)
            
            // disabled to close the sheet .interactiveDismissDisabled
//                .interactiveDismissDisabled()
            
        }
    }
}


struct MyNextView: View {
    @Binding var detents: PresentationDetent
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack(spacing: 40) {
                Button("Large") {
                    detents = .large
                }
                
                Button("Medium") {
                    detents = .medium
                }
                
                Button("50%") {
                    detents = .fraction(0.5)
                }
                Button("300PX") {
                    detents = .height(300)
                }
            }
            
        }
    }
}
struct ResizableSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ResizableSheetBootcamp()
    }
}
