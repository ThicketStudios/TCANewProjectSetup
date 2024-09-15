//
//  File.swift
//  NewProjectSetup
//
//  Created by Wyeth Shamp on 9/11/24.
//

import Foundation
import SwiftUI
import ComposableArchitecture

public class AppDelegate: NSObject, UIApplicationDelegate {
    
    public let store = Store(initialState: RootFeature.State()) {
        RootFeature()
    }
    
    public func application(_ application: UIApplication,
                            didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        store.send(.didFinishLaunching)
        
        return true
        
    }
}
