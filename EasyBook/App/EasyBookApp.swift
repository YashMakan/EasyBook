//
//  ContentView.swift
//  EasyBook
//
//  Created by Mobile Dev on 01/06/23.
//

import SwiftUI

@main
struct EasyBookApp: App {
    @StateObject var screen: ScreenResolution = ScreenResolution.fromUiBounds()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(screen)
        }
    }
}
