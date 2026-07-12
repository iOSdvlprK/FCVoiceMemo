//
//  FCVoiceMemoApp.swift
//  FCVoiceMemo
//
//  Created by joe on 6/22/26.
//

import SwiftUI

@main
struct FCVoiceMemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}
