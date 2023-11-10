//
//  AlertBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 09/08/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var background: Color = Color.green
    @State var alertType: MyAlerts?=nil
    //    @State var alertTitle: String=""
    //    @State var alertMessage: String=""
    
    enum MyAlerts {
        case success
        case error
    }
    var body: some View {
        ZStack{
            background.edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button 1") {
                    alertType = .error
                    showAlert.toggle()
                }
                
                Button("Button 2") {
                    alertType = .success
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
        
        /// Mark 1st and 2nd part of lesson is here
        //        ZStack {
        //            background.edgesIgnoringSafeArea(.all)
        //
        //            VStack {
        //                Button("Button 1") {
        //                    alertTitle = "Error uploading the video"
        //                    alertMessage = "The video could not be uploaded"
        //                    showAlert.toggle()
        //                }
        //                Button("Button 2") {
        //                    alertTitle = "Successfully uploaded video🥳"
        //                    alertMessage = "Congrats your video successfully uploaded!"
        //                    showAlert.toggle()
        //                }
        //            }.alert(isPresented: $showAlert) {
        //                getAlert()
        //            }
        //
        //        }
    }
    //    func getAlert() -> Alert {
    //        /* Mark 2nd part 2buttons with one cancel button */
    //        return Alert(title: Text(alertTitle), message: Text(alertMessage), dismissButton: .cancel())
    //
    //        /// Mark 1st part of video to make the alert with two buttons (cancel , delete)
    // //        return Alert(title: Text("Do you want to change the color"),
    // //                     message: Text("here is description"),
    // //                     primaryButton: .destructive(Text("Delete"),
    // //                                                 action: {
    // //                   background = .red
    // //               }),
    // //                     secondaryButton: .cancel())
    //     }
    
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("This was an error"), dismissButton: .default(Text("Oh shit!"), action: {
                background = .green
            }))
        case .success:
            return Alert(title: Text("This was success"), message: nil,
                         dismissButton: .default(Text("OK"), action: {
                background = .orange
            }))
        default:
            return Alert(title: Text("Error"))
        }
    }
    
    
}




struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
