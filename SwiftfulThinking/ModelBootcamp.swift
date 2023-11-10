//
//  ModelBootcamp.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 14/08/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let username: String
    let follower: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(name: "Amrulloh", username: "amrulloh123", follower: 146, isVerified: true),
        UserModel(name: "Bilol", username: "sanatillayev", follower: 1165, isVerified: true),
        UserModel(name: "Nick", username: "nick1990", follower: 432037, isVerified: true),
        UserModel(name: "MrBeast", username: "mrbeast_us", follower: 912365, isVerified: true)

    ]
    var body: some View {
        
        NavigationView {
            VStack{
                List {
                    ForEach(users) { user in
                        //List item
                        HStack(spacing: 15) {
                            // avatar
                            Circle()
                                .frame(width: 35, height: 35)
                            
                            // Username & name & badge
                            VStack(alignment: .leading) {
                                HStack {
                                    Text(user.name)
                                        .font(.headline)
                                    if user.isVerified{
                                        Image(systemName: "checkmark.seal.fill")
                                            .foregroundColor(.blue)
                                    }
                                }
                                
                                Text("@"+user.username)
                                    .font(.callout)
                                    .foregroundColor(.gray)
                            }
                            Spacer()
                            
                            // Number of followers
                            VStack{
                                Text("\(user.follower)")
                                    .font(.headline)
                                Text("Followers")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                            }
                        }
                        .padding(.vertical , 10)
                    }
                }
                .navigationBarTitle("Users")
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "plus")
                        Text("Add User")
                    }
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color.blue)
                    .cornerRadius(20)
                }
                .padding()
            }
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
