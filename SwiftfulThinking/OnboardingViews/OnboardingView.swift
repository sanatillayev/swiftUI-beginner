//
//  OnboardingView.swift
//  SwiftfulThinking
//
//  Created by Bilol Sanatillaev on 16/08/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*x
    0 - welcome
    1 - add name
    2 - add age
    3 - add gender
    */
    // onboarding inputs
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    
    var body: some View {
        ZStack {
            // bg
            ZStack{
                switch onboardingState{
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    Text("default")
                }
            }
            
            // button
            VStack{
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle ))
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(Color.purple)
    }
}

// MARK: COMPONENTS

extension OnboardingView {
    
    
    private var bottomButton: some View{
        Text(onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3 ? "FINISH" :
                onboardingState > 3 ? "Congrats are done!" :
                "NEXT"
        )
            .font(.headline)
            .foregroundColor(.purple)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                 handleNextButtonPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }
            Text("This is the #1 app to find your match online. In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
            Spacer()
            Spacer()
        }
        .foregroundColor(.white)
        .padding(30)
        .multilineTextAlignment(.center)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text("What is your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
            TextField("Type your name here...", text: $name)
                .frame(height: 55)
                .padding(.horizontal)
                .background()
                .cornerRadius(10)
                .font(.headline)
                .foregroundColor(.primary)
                
            Spacer()
            Spacer()
        }
        .foregroundColor(.white)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text("What is your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("\(String(format: "%.0f", age))") //format ting string 38.0000 -> 38
                .font(.headline)
                .fontWeight(.semibold)
            Slider(value: $age, in: 18...100 )
                .tint(.white)
                
                
            Spacer()
            Spacer()
        }
        .foregroundColor(.white)
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text("What is your gender ?")
                .font(.largeTitle)
                .fontWeight(.semibold)

            Menu {
                Picker(selection: $gender, label: Text("\(gender)")) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")

                }
            } label: {
                
                Text(gender.count > 0 ? "\(gender)" : "Select your gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            
            
            Spacer()
            Spacer()
        }
        .foregroundColor(.white)
        .padding(30)
    }
}

// MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        //check the inputs
        switch onboardingState {
        case 1: guard name.count >= 3 else {
            showAlert(title: "Your name must be at least 3 characters long! 🤓")
            return
        }
        case 3: guard gender.count > 0 else {
            showAlert(title: "Please select your gender to move forward! 🥺")
            return
        }
            
        default:
            break
        }
        
        // go to next section
        if onboardingState == 3 {
            signIn()
        }else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
        
    }
    
    func signIn() {
        currentUserAge = Int(age)
        currentUserName = name
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
}
