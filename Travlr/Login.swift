//
//  Login.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI
import FirebaseAuth

struct Login:View{
    @EnvironmentObject var viewModel: AppViewModel
    @StateObject var viewRouter: ViewRouter
    @State var isLoginMode = false
    @State var emailAdress: String = ""
    @State var password: String = ""
    
    var body: some View{
        ZStack{
            Color.white
            VStack{
                HStack{
                    Image("locationIconLogin")
                        .resizable()
                        .frame(width: 65, height: 65, alignment: .center
                        )
                    Text("Travlr")
                        .foregroundColor(Color("Colour2"))
                        .font(.custom("HelveticaNeue-Bold", size: 45))
                        
                }
                .padding([.top, .bottom, .trailing])
                
                Picker(selection: $isLoginMode) {
                    Text("Create Account")
                        .tag(true)
                    
                    Text("Login")
                        .tag(false)
                        .onTapGesture {
                            isLoginMode = true
                        }
                } label: {
                    Text("Logged In or Sign Up?")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                VStack{
                    TextField("Email Address", text: $emailAdress)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .padding(.vertical, 20)
                        .frame(width: 360, height: 60, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("Colour3"), lineWidth: 3)
                                .padding(.horizontal, -5)
                        )
                        .padding(.vertical, 10)
                    SecureField("Password", text: $password)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .padding(.vertical, 20)
                        .frame(width: 360, height: 60, alignment: .center)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("Colour3"), lineWidth: 3)
                                .padding(.horizontal, -5)
                        )
                        .padding(.vertical, 10)
                }
                
                Button{
                    //Firebase Connection and Submission
                    guard !emailAdress.isEmpty, !password.isEmpty else{
                        return
                    }
                    signIn(email: emailAdress, password: password)
                } label: {
                    Text("Login")
                        .padding(.all)
                        .frame(width: 360, height: 60, alignment: .center)
                        .background(Color("Colour3"))
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue-Medium", size: 20))
                        
                }
                .padding(.top, 30)
                
                Spacer()
            }
        }
    }
    func signIn(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else{
                return
            }
            
            switch result {
            case .none:
                print("Could not sign in user.")
            case .some(_):
                print("User signed in")
                withAnimation {
                    viewRouter.currentPage = .preferences
                }
            }
            //Success
        }
    }
}

struct Login_Previews: PreviewProvider{
    static var previews: some View{
        Login(viewRouter: ViewRouter())
    }
}
