//
//  OnboardingMainView.swift
//  EasyBook
//
//  Created by Mobile Dev on 01/06/23.
//

import SwiftUI

struct OnboardingMainView: View {
    let page: OnboardingPage
    let screenHeight = UIScreen.main.bounds.size.height
    let screenWidth = UIScreen.main.bounds.size.width
    @EnvironmentObject var onboardingViewModel: OnboardingViewModel
    
    var body: some View {
        VStack {
            if onboardingViewModel.currentPageIndex != onboardingPages.count - 1 {
                Spacer()
                Image(page.imageName)
                    .resizable()
                    .frame(width: screenWidth * 0.75, height: screenHeight * 0.5)
                    .aspectRatio(contentMode: .fit)
            } else {
                OnboardingPage3View()
            }
            
            Spacer()
            
            Text(page.title)
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 20)
                .multilineTextAlignment(.center)
            
            Text(page.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 40)
                .padding(.top, 10)
            
            Spacer()
        }
        .padding()
        .ignoresSafeArea()
    }
}

struct OnboardingMainView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingMainView(page: onboardingPages.last!)
            .environmentObject(OnboardingViewModel())
    }
}
