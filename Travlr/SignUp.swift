//
//  SignUp.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct SignUp:View{
    @StateObject var viewRouter: ViewRouter
    @State var isLoginMode = false
    @State var emailAdress: String = ""
    @State var password: String = ""
    @State var age: String = ""
    @State var sex: String = ""
    
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
                    
                    HStack{
                        Spacer()
                        TextField("Age", text: $age)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                            .padding(.vertical, 20)
                            .frame(width: 170, height: 60, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("Colour3"), lineWidth: 3)
                                    .padding(.horizontal, -5)
                            )
                            .padding(.vertical, 10)
                        Spacer()
                        TextField("Sex", text: $sex)
                            .textInputAutocapitalization(.never)
                            .disableAutocorrection(true)
                            .padding(.vertical, 20)
                            .frame(width: 170, height: 60, alignment: .center)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color("Colour3"), lineWidth: 3)
                                    .padding(.horizontal, -5)
                            )
                            .padding(.vertical, 10)
                        Spacer()
                    }
                }
                
                Button{
                    //Firebase Connection and Submission
                    viewRouter.currentPage = .login
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
        SignUp(viewRouter: ViewRouter())
    }
}
