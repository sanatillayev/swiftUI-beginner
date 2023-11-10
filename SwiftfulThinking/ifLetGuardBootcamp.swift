//
//  ifLetGuardBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 14/08/23.
//

import SwiftUI

struct ifLetGuardBootcamp: View {
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool=false
    
    var body: some View {
        NavigationView {
            VStack{
                Text("Here we are practicing safe coding")
                
                if let text = displayText{
                    Text(text)
                        .font(.headline)
                }
                
                if isLoading{
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe coding!")
            .onAppear(){
                loadData2()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now()+3){
                displayText = "User id is: \(userID)"
                isLoading = false
            }
        }else {
            displayText = "Error. There is no user id"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no user id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            displayText = "User id is: \(userID)"
            isLoading = false
        }
    }
}

struct ifLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ifLetGuardBootcamp()
    }
}
