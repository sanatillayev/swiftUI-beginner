//
//  ActionsheetBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 09/08/23.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActionSheet: Bool=false
    @State var actionSheetOptions: ActionSheetOptions = .isMyPost
    
    
    enum ActionSheetOptions{
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    showActionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet) {
            getActionSheet()
        }
    }
    
    
    func getActionSheet()->ActionSheet{
        let share: ActionSheet.Button = .default(Text("Share")) {
            //add code to share
        }
        let report: ActionSheet.Button = .destructive(Text("Report")) {
            //
        }
        let delete: ActionSheet.Button = .destructive(Text("Delete")) {
            //
        }
        let cancel: ActionSheet.Button =  .cancel()
        let title: Text = Text("What you wanna do ?")
        
        switch actionSheetOptions {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [share, delete, cancel])
        case .isOtherPost:
            return ActionSheet(title: title, message: nil, buttons: [share, report, cancel])
        }
        
    }
}

struct ActionsheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionsheetBootcamp()
    }
}
