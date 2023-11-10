//
//  AppStorageBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 16/08/23.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    //2nd way
//    @State var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(currentUserName ?? "Enter name")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button {
                let name: String = "Bill"
                
                currentUserName = name
                //2nd way
//                UserDefaults.standard.set(name, forKey: "name")
            } label: {
                Text("Save".uppercased())
            }
        }
        //2nd  way
//        .onAppear {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
