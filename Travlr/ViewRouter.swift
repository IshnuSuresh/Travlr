//
//  ViewRouter.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

class ViewRouter: ObservableObject{
    @Published var currentPage: Page = .getStarted
}

enum Page{
    case getStarted
    case login
    case signUp
    case main
    case userInformation
    case preferences
    case finalSuggestion
}
