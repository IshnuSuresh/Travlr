//
//  TravlrApp.swift
//  Travlr
//
//  Created by Ishnu Suresh on 2022-09-17.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct TravlrApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var viewRouter = ViewRouter()
    @StateObject var viewModel = AppViewModel()
    @StateObject var Information = userInformationModel()
    var body: some Scene {
        WindowGroup {
            MotherView(viewRouter: viewRouter, viewModel: viewModel, Information: Information)
        }
    }
}
