//
//  ProfileView.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 16/08/23.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("Your are \(currentUserAge ?? 0) years old")
            Text("Your gender is \(currentUserGender ?? "unknown")")
            
            Text("Sign Out")
                 .font(.headline)
                .fontWeight(.medium)
                .frame( height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.headline)
        .foregroundColor(.purple)
        .padding(.vertical, 60)
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
    }
    
    func signOut() {
        currentUserAge = nil
        currentUserName = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
