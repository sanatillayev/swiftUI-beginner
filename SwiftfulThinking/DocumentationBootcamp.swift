//
//  DocumentationBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 12/08/23.
//

import SwiftUI

struct DocumentationBootcamp: View {
    // MARK: PROPERTIES
    
    @State var arr:[String] = [
        "Apples", "Bananas", "Oranges"
    ]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // BILOL - Working copy - things to do:
    var body: some View {
        NavigationView { // START NAV
            ZStack { // START ZSTACK
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foreground
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            
                                            Button(action: {
                        showAlert.toggle()
                    }, label: {
                        Text("Alert".uppercased())
                            .font(.headline)
                    })
                    )
                    .alert( isPresented: $showAlert) {
                        getAlert(text: "Goooo")
                    }
            } // END ZSTACK
        } // END NAV
    }
    
    private var foreground: some View{
        ScrollView { // START SCROLLV
            Text("Hello")
            ForEach(arr, id: \.self) { item in
                Text("\(item)")
                    .font(.headline)
            }
            
        }// END SCROLLV
    }
    
    // MARK: FUNCTIONS
    
    /// Gets an alert with the specified title
    ///
    ///The function creates and returns an alert imedietly. The alert will have a title based on the text parameter but it will NOT have a message
    /// ```
    /// getAlert(text: "Hi") -> Alert(text: Text("Hi"))
    /// ```
    /// - Warning: There is no additional message
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns the alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEWS

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
