//
//  MotherView.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct MotherView: View{
    @StateObject var viewRouter: ViewRouter
    
    var body: some View{
        switch viewRouter.currentPage{
        case .login:
            Login(viewRouter: viewRouter)
        case .signUp:
            SignUp(viewRouter: viewRouter)
        case .getStarted:
            GetStarted(viewRouter: viewRouter)
        case .main:
            Main(viewRouter:viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter())
    }
}
