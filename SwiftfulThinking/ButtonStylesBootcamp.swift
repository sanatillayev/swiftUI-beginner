//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 17/08/23.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Button Title")
                    .font(.headline)
                    .fontWeight(.bold)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.mini) /// not working coz we changed our text frame
            
            HStack {
                
                VStack {
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.plain)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderless)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.bordered)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.automatic)
                }
                .padding()
                
                VStack {
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .controlSize(.small)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .controlSize(.mini)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .controlSize(.regular)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    
                    Button("Button Title") {
                        
                    }
                    .font(.headline)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .buttonStyle(.automatic)
                }
                .padding()
            }
        }
        .padding()
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
