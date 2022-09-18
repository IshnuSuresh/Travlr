//
//  GetStarted.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct GetStarted: View{
    
    @StateObject var viewRouter: ViewRouter
    
    var body: some View{
        
        ZStack{
            Image("background").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    
                    Image("locationIcon").resizable().frame(width: 75, height: 75, alignment: .trailing)
                    
                    Text("Travlr")
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue-Bold", size: 60))
                        .ignoresSafeArea()
                    
                    Spacer()
                }
                Spacer()
                
                VStack{
                    Text("Instead of finding who you're meant to meet, find what you're meant to see")
                        .foregroundColor(Color.white)
                        .font(.custom("HelveticaNeue-Medium", size: 20))
                        .multilineTextAlignment(.center)
                        .lineLimit(3)
                        .frame(width: 380.0, height: 100.0)
                    
                    Button {
                        viewRouter.currentPage = .login
                    } label: {
                        Text("Login Into Your Account")
                            .font(.custom("HelveticaNeue-Medium", size: 20))
                            .foregroundColor(.black)
                            .padding(.all, 20)
                            .padding(.horizontal, 30)
                            .background(Color.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 5)
                            )
                    }
                    .padding(.all, 10)
                    Button {
                        viewRouter.currentPage = .signUp
                    } label: {
                        Text("Become A Travlr!")
                            .font(.custom("HelveticaNeue-Medium", size: 20))
                            .foregroundColor(.black)
                            .padding(.all, 20)
                            .padding(.horizontal, 64)
                            .background(Color.white)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.black, lineWidth: 5)
                            )
                    }
                    .padding(.all, 10)
                    Button{

                    } label: {
                        Text("Forgot Your Login Information? ")
                            .font(.custom("HelveticaNeue-Regular", size: 20))
                            .padding(.all, 20)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
}

struct GetStarted_Previews: PreviewProvider {
    static var previews: some View {
        GetStarted(viewRouter: ViewRouter())
    }
}
