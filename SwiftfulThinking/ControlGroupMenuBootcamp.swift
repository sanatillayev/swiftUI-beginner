//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillayev on 04/03/24.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My menu") {
            ControlGroup("title") {
                Button("hii") {
                    
                }
                Button("World") {
                    
                }
                Button("Hello") {
                    
                }

            }
            Menu("next menu") {
                Button("good") {
                    
                }
                Button("bad") {
                    
                }
            }
            Button("next button"){
                
            }
            
            Menu("new title") {
                Button("hii") {
                    
                }
                Button("World") {
                    
                }
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
