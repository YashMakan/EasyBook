//
//  OnboardingNavigatorView.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct OnboardingNavigatorView: View {
    @Binding var isPresented: Bool
    var body: some View {
        NavigationLink(destination: OnboardingView(), isActive: $isPresented) {
            EmptyView()
        }.hidden()
    }
}
