//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 17/08/23.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits : [String] = [
        "apple","banana", "orange","peach"
    ]
    
    var body: some View {
        
        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button("Archive") {
                            
                        }
                        .tint(.accentColor)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.yellow)
                        
                        Button("Flag") {
                            
                        }
                        
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button("Share") {
                            
                        }
                        .tint(.cyan)
                        
                    }
            }
//            .onDelete(perform: delete)
            
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
