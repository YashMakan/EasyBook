//
//  SplashView.swift
//  EasyBook
//
//  Created by Mobile Dev on 01/06/23.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var splashViewModel: SplashViewModel = SplashViewModel()
    var isPresented: Binding<Bool> {
        get {
            $splashViewModel.closeSplashView
        }
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundBlobView()
                LogoDetailsView()
                OnboardingNavigatorView(isPresented: isPresented)
            }
            .splashViewBackground(
                color: AppColors.secondaryColor,
                destination: OnboardingView(),
                isPresented: isPresented,
                onAppear: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        splashViewModel.closeSplashView = true
                        print(splashViewModel.closeSplashView)
                    }
                }
            )
        }.navigationBarBackButtonHidden()
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
