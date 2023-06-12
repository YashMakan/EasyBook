//
//  IndicationView.swift
//  EasyBook
//
//  Created by Mobile Dev on 01/06/23.
//

import SwiftUI

struct IndicatorView: View {
    @EnvironmentObject var onboardingViewModel: OnboardingViewModel
    @State private var opacity: Double = 1.0
    @State private var isNavigationActive = false
    
    var body: some View {
        Group {
            HStack(spacing: 10) {
                if onboardingViewModel.currentPageIndex != onboardingPages.count - 1 {
                    ForEach(0..<onboardingPages.count, id: \.self) { index in
                        Rectangle()
                            .frame(width: onboardingViewModel.currentPageIndex == index ? 30 : 8, height: 8)
                            .cornerRadius(16)
                            .foregroundColor(onboardingViewModel.currentPageIndex == index ? AppColors.primaryColor : .gray)
                            .onAppear {
                                opacity = 0
                            }
                    }
                } else {
                    Button(action: {
                        isNavigationActive = true
                    }) {
                        Text("Get Started Now")
                    }
                    .buttonStyle(RoundedButtonStyle())
                    .opacity(opacity)
//                    .animation(.easeInOut(duration: 0.5))
                    .transition(.opacity)
                    .onAppear {
                        opacity = 1
                    }
                    
                    NavigationLink(
                        destination: HomeView(),
                        isActive: $isNavigationActive,
                        label: { EmptyView() }
                    )
                }
            }.padding(.bottom, 36)
        }
    }
}

struct RoundedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .background(AppColors.primaryColor)
            .cornerRadius(10)
    }
}
