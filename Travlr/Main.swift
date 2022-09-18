//
//  Main.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct Main:View{
    @StateObject var viewRouter: ViewRouter
    var body: some View{
        VStack{
            //Top Stack
            HStack{
                Spacer()
                Button{
                    
                } label: {
                    Image("profileIcon")
                        .resizable().aspectRatio(contentMode: .fit).frame(width: 45, height: 45, alignment: .center)
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    HStack{
                        Image("locationIconLogin")
                            .resizable().aspectRatio(contentMode: .fit).frame(width: 45, height: 45, alignment: .center)
                        Text("Travlr")
                            .foregroundColor(Color("Colour2"))
                            .font(.custom("HelveticaNeue-Bold", size: 55))
                    }
                }
                
                Spacer()
                
                Button{
                    
                } label: {
                    Image(systemName: "plus")
                        .aspectRatio(contentMode: .fit)
                        .font(.system(size: 45.0))
                        .foregroundColor(Color("Colour1"))
                }
                
                Spacer()
            }
            Spacer()
            //Card
            ZStack {
                ForEach(Card.data) {card in
                    CardView(card: card).padding(25)
                }
            }.zIndex(1.0)
            HStack{
                Spacer()
                Button{
                    
                } label: {
                    Image("closeIcon")
                        .resizable().aspectRatio(contentMode: .fit).frame(width: 55, height: 55, alignment: .center)
                }
                
                Spacer()
                
                Button{
                    viewRouter.currentPage = .finalSuggestion
                } label: {
                    Image("refreshIcon")
                        .resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center)
                }
                
                Spacer()
                Button{
                    
                } label: {
                    Image("heartIcon")
                        .resizable().aspectRatio(contentMode: .fit).frame(width: 50, height: 50, alignment: .center)
                }
                
                Spacer()
            }
        }
    }
}

struct Main_Previews: PreviewProvider{
    static var previews: some View{
        Main(viewRouter: ViewRouter())
    }
}

struct CardView: View {
    @State var card: Card
    let cardGradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(1)])
    var body: some View {
        ZStack(alignment: .topLeading){
            Image(card.imageName).resizable().aspectRatio(contentMode: .fit)
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                VStack(alignment: .leading){
                    HStack{
                        Text(card.nameOfLocation)
                            .foregroundColor(.white)
                            .font(.custom("HelveticaNeue-Bold", size: 30))
                    }
                    Text(card.categoryOfLocation)
                        .foregroundColor(.white)
                        .font(.custom("HelveticaNeue-Medium", size: 30))
                }
            }
            .padding(.all)
            .foregroundColor(.white)
            
            HStack{
                Spacer()
                Image("like")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75)
                    .padding(.trailing, 200)
                    .padding(.vertical, 10)
                    .opacity(Double(card.x/10 - 1))
                Image("dislike")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 75)
                    .padding(.vertical, 10)
                    .opacity(Double(card.x/10 * -1 - 1))
                Spacer()
            }
        }
        .cornerRadius(15)
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        .gesture(
            DragGesture()
                .onChanged({ value in
                    withAnimation(.default) {
                        card.x = value.translation.width
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    }
                })
            
                .onEnded({ value in
                    withAnimation(.interpolatingSpring(mass:1.0 ,stiffness: 50, damping: 8, initialVelocity: 0)) {
                        switch value.translation.width{
                        case 0...100:
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x > 100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x < -100:
                            card.x = -500; card.degree = -12
                        default: card.x = 0; card.y = 0
                        }
                    }
                })
        )
    }
}
