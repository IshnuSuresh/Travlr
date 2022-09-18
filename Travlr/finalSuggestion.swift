//
//  finalSuggestion.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-18.
//

import SwiftUI

struct finalSuggestion:View{
    @StateObject var viewRouter: ViewRouter
    
    var body: some View{
        VStack{
            
            Text("Final Suggestions")
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 40))
            Spacer()
            VStack{
                Text("Hotel: ")
                    .foregroundColor(.black)
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                    .frame(width: 375)
                
                Link(destination: URL(string: "https://www.booking.com/hotel/ca/colour-cube-guest-house-toronto-downtown-east.html")!) {
                    Text("Colour Cube Guest House Toronto Downtown East")
                }
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 25))
                .frame(width: 375)
            }
            Spacer()
            VStack{
                Text("Restaurant: ")
                    .foregroundColor(.black)
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                    .frame(width: 375)
                Link(destination: URL(string: "https://eggstatic.ca/home")!){
                    
                    Text("Breakfast: Eggstatic Toronto")
                }
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 25))
                .frame(width: 375)
                Link(destination: URL(string: "https://thaibasil.ca/")!){
                    Text("Lunch: Thai Basil")
                }
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 25))
                .frame(width: 375)
                Link(destination: URL(string: "https://www.eataly.ca/")!){
                    Text("Dinner: Eataly")
                }
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 25))
                .frame(width: 375)
            }
            Spacer()
            VStack{
                Text("Attractions: ")
                    .foregroundColor(.black)
                    .font(.custom("HelveticaNeue-Bold", size: 25))
                    .frame(width: 375)
                
                Link(destination: URL(string: "https://www.cntower.ca/")!){
                    Text("Attractions: CN Tower")
                }
                .foregroundColor(Color("Colour2"))
                .font(.custom("HelveticaNeue-Bold", size: 25))
                .frame(width: 375)
            }
            Spacer()
        }
    }
    
}

struct finalSuggestion_Previews: PreviewProvider{
    static var previews: some View{
        finalSuggestion(viewRouter: ViewRouter())
    }
}
