//
//  MotherView.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

struct MotherView: View{
    @StateObject var viewRouter: ViewRouter
    @StateObject var viewModel: AppViewModel
    @StateObject var Information: userInformationModel
    
    var body: some View{
        switch viewRouter.currentPage{
        case .login:
            Login(viewRouter: viewRouter)
        case .signUp:
            SignUp(viewModel: viewModel, viewRouter: viewRouter, Information: Information)
        case .getStarted:
            GetStarted(viewRouter: viewRouter)
        case .main:
            Main(viewRouter:viewRouter)
        case .userInformation:
            userInformation(viewRouter: viewRouter, Information: Information)
        case .preferences:
            Preferences(viewRouter: viewRouter, Information: Information)
        case .finalSuggestion:
            finalSuggestion(viewRouter: viewRouter)
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView(viewRouter: ViewRouter(), viewModel: AppViewModel(), Information: userInformationModel())
    }
}
