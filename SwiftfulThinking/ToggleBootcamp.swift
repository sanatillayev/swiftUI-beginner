//
//  ToggleBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 09/08/23.
//

import SwiftUI

struct ToggleBootcamp: View {
    @State var status: Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("Status")
                Spacer()
                Text(status ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(isOn: $status) {
                    Text("Switch the toggle")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.blue)) /// customze the color of toggle
            
            Spacer()
        }
        .padding()
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
