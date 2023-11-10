//
//  FocusStateBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 17/08/23.
//

import SwiftUI

struct FocusStateBootcamp: View {
    
    enum OnboardingField: Hashable {
        case username
        case password
    }
    @FocusState private var fieldInFocus: OnboardingField?
    
//    @FocusState private var usernameFocusState: Bool
    @State private var username: String = ""
    
//    @FocusState private var passwordFocusState: Bool
    @State private var password: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Add your name...", text: $username)
                .focused($fieldInFocus, equals: .username)
//                .focused($usernameFocusState)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            SecureField("Add your password...", text: $password)
                .focused($fieldInFocus, equals: .password)
//                .focused($passwordFocusState)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
                
            Button("Sign Up 🚀") {
                let usernameIsValid = !username.isEmpty
                let passwordIsValid = !password.isEmpty
                
                if passwordIsValid && usernameIsValid {
                    print("Sign Up")
                }else if usernameIsValid {
                    fieldInFocus = .password
//                    passwordFocusState = true
//                    usernameFocusState = false
                }else {
                    fieldInFocus = .username
//                    usernameFocusState = true
//                    passwordFocusState = false

                }
        }
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now()+5) {
//                self.usernameFocusState = true
//            }
        }
        .padding(.horizontal, 30)

    }
}

struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
