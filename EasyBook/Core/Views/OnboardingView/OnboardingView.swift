import SwiftUI

struct OnboardingView: View {
    var body: some View {
        NavigationView {
            VStack {
                OnboardingPageVew()
                Spacer()
                IndicatorView()
            }.environmentObject(OnboardingViewModel())
                .edgesIgnoringSafeArea(.all)
        }.navigationBarBackButtonHidden()
    }
}
