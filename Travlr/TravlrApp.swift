//
//  TravlrApp.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI

@main
struct TravlrApp: App {
    @StateObject var viewRouter = ViewRouter()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter)
        }
    }
}
