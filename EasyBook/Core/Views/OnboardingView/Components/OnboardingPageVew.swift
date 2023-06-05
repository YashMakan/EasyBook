//
//  OnboardingPageVew.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct OnboardingPageVew: View {
    @EnvironmentObject var onboardingViewModel: OnboardingViewModel
    var body: some View {
        TabView(selection: $onboardingViewModel.currentPageIndex) {
            ForEach(Array(0..<onboardingPages.count), id: \.self) { index in
                OnboardingMainView(page: onboardingPages[index])
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}
