//
//  SplashViewBackgroundModifier.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import Foundation
import SwiftUI

struct SplashViewBackground: ViewModifier {
    let color: Color
    let destination: OnboardingView
    @Binding var isPresented: Bool
    let onAppear: () -> Void
    
    func body(content: Content) -> some View {
        content
            .background(color)
            .edgesIgnoringSafeArea(.all)
            .navigationDestination(isPresented: $isPresented) {
                destination
            }
            .onAppear(perform: onAppear)
    }
}

extension View {
    func splashViewBackground(
        color: Color,
        destination: OnboardingView,
        isPresented: Binding<Bool>,
        onAppear: @escaping () -> Void
    ) -> some View {
        self.modifier(SplashViewBackground(
            color: color,
            destination: destination,
            isPresented: isPresented,
            onAppear: onAppear
        ))
    }
}
