//
//  HomeView.swift
//  EasyBook
//
//  Created by Mobile Dev on 02/06/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var homeViewModel: HomeViewModel = HomeViewModel()
    @EnvironmentObject var screen: ScreenResolution
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("onboard_3")
                    .resizable()
                    .frame(width: screen.w * 1.4, height: screen.h * 0.75)
                    .position(x: screen.w / 3, y: screen.h * 0.24)
                    .rotationEffect(.degrees(10))
                
                HomeViewNavigationView()
                
                CurrentReadingBookView()
                
                PopularBooksView()
                
                Spacer()
                
            }
            .navigationBarBackButtonHidden()
            .onAppear {
                homeViewModel.getWeekBook()
                homeViewModel.getTrendingBooks()
                homeViewModel.getYouMightLikeBooks()
            }
        }
        .environmentObject(homeViewModel)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
