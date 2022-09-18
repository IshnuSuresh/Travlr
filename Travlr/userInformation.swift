//
//  userInformation.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-18.
//

import SwiftUI
import Firebase

struct userInformation: View{
    @StateObject var viewRouter: ViewRouter
    @ObservedObject var Information: userInformationModel
    
    var body: some View{
        ScrollView{
            VStack {
                VStack{
                    Text("User Information")
                        .foregroundColor(Color("Colour2"))
                        .font(.custom("HelveticaNeue-Bold", size: 45))
                    Text("Please Answer The Following Questions For A Better User Experience!")
                        .font(.custom("HelveticaNeue-Regular", size: 15))
                        .multilineTextAlignment(.center)
                        .padding(.top, 3.0)
                        .frame(width: 375.0)
                }
                HStack{
                    Spacer()
                    TextField("Age", text: $Information.age)
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
                    TextField("Sex", text: $Information.sex)
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
                TextField("Ethnicity", text: $Information.ethnicity)
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
                
                TextField("Favourite City", text: $Information.favouriteCity)
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
                
                TextField("Favourite Attraction", text: $Information.favouriteAttraction)
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
                
                VStack{
                    TextField("Favourite Cuisine", text: $Information.favouriteCuisine)
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
                    
                    TextField("Favourite Breakfast Spot", text: $Information.favouriteBreakfastSpot)
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
                    
                    TextField("Favourite Lunch Spot", text: $Information.favouriteLunchSpot)
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
                    
                    TextField("Favourite Dinner Spot", text: $Information.favouriteDinnerSpot)
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
                    Information.addData(emailAddress: Information.emailAddress, password: Information.password, age: Information.age, sex: Information.sex, ethnicity: Information.ethnicity, favouriteAttraction: Information.favouriteAttraction, favouriteBreakfastSpot: Information.favouriteBreakfastSpot, favouriteCity: Information.favouriteCity, favouriteCuisine: Information.favouriteCuisine, favouriteDinnerSpot: Information.favouriteDinnerSpot, favouriteLunchSpot: Information.favouriteLunchSpot)
                    viewRouter.currentPage = .login
                } label: {
                    Text("Submit")
                        .padding(.all)
                        .frame(width: 360, height: 60, alignment: .center)
                        .background(Color("Colour3"))
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue-Medium", size: 20))
                }
                .cornerRadius(10)
                .padding(.top, 20)
            }
        }
        .frame(width: 400, height: 750)
    }
}

struct userInformation_Previews: PreviewProvider{
    static var previews: some View{
        userInformation(viewRouter: ViewRouter(), Information: userInformationModel())
    }
}
