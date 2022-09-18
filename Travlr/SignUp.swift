//
//  SignUp.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI
import FirebaseAuth

class AppViewModel: ObservableObject{
    
    var isSignedIn: Bool{
        return Auth.auth().currentUser != nil
    }
    
    func signUp(email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard result != nil, error == nil else{
                return
            }
            //Success
        }
    }
}

struct SignUp:View{
    @StateObject var viewModel: AppViewModel
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var Information: userInformationModel
    @State var isLoginMode = false
    
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
                        .tag(false)
                    
                    Text("Login")
                        .tag(true)
                        .onTapGesture {
                            isLoginMode = true
                        }
                } label: {
                    Text("Logged In or Sign Up?")
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                VStack{
                    TextField("Email Address", text: $Information.emailAddress)
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
                    SecureField("Password", text: $Information.password)
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
                    viewModel.signUp(email: Information.emailAddress, password: Information.password)
                    viewRouter.currentPage = .userInformation
                } label: {
                    Text("Create an Account")
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
}

struct SignUp_Previews: PreviewProvider{
    static var previews: some View{
        SignUp(viewModel: AppViewModel(), viewRouter: ViewRouter(), Information: userInformationModel())
    }
}
