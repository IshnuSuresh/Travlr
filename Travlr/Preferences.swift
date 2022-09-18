//
//  Preferences.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-18.
//

import SwiftUI

struct Preferences:View{
    @StateObject var viewRouter:ViewRouter
    @StateObject var Information:userInformationModel
    
    
    
    var body: some View{
        VStack{
            Text("Your Travel Plans")
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 45))
                .padding(.top, 10)
            Text("Which City Are You Planning To Go To?")
                .font(.custom("HelveticaNeue-Bold", size: 20))
                .multilineTextAlignment(.leading)
                .padding(.top, 10)
            
            TextField("ex. New York", text: $Information.City)
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
            Text("Amount of Money You're Willing To Spend On A Hotel?")
                .font(.custom("HelveticaNeue-Bold", size: 20))
                .frame(width: 330)
                .padding(.trailing, 60)
                .multilineTextAlignment(.leading)
            
            TextField("ex. $300", text: $Information.hotelPriceRange)
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
            
            Button{
                viewRouter.currentPage = .main
            } label: {
                Text("Submit")
                    .padding(.all)
                    .frame(width: 360, height: 60, alignment: .center)
                    .background(Color("Colour3"))
                    .foregroundColor(.white)
                    .font(.custom("HelveticaNeue-Medium", size: 20))
                    .cornerRadius(10)
            }
            .cornerRadius(10)
            .padding(.top, 20)
            Spacer()
        }
    }
}

struct Preferences_Previews: PreviewProvider{
    static var previews: some View{
        Preferences(viewRouter: ViewRouter(), Information: userInformationModel())
    }
}
