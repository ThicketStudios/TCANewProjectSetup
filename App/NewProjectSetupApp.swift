//
//  NewProjectSetupApp.swift
//  NewProjectSetup
//
//  Created by Wyeth Shamp on 9/11/24.
//

import SwiftUI
import Root
import ComposableArchitecture
@main
struct NewProjectSetupApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    var body: some Scene {
        WindowGroup {
            RootView(store: self.appDelegate.store)
        }
    }
}
