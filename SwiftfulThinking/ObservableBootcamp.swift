//
//  ObservableBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 04/03/24.
//

import SwiftUI
@Observable class ObservableViewModel{
    
    var title = "Starting title"
}

struct ObservableBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            Button(action: {
                viewModel.title = "new title"
            }, label: {
                Text(viewModel.title)
            })
            
            ChildView(viewModel: viewModel)
            
            ThirdView()
            
        }
        .environment(viewModel)
        
            
    }
}

struct ChildView: View{
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View{
        Button(action: {
            viewModel.title = "new title from child"
        }, label: {
            Text(viewModel.title)
        })
    }
}

struct ThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View{
        Button(action: {
            viewModel.title = "third view!!!!"
        }, label: {
            Text(viewModel.title)
        })
    }
    
}

#Preview {
    ObservableBootcamp()
}
