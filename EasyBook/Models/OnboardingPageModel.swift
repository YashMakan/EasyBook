//
//  OnboardingPageModel.swift
//  EasyBook
//
//  Created by Mobile Dev on 01/06/23.
//

import Foundation

struct OnboardingPage: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
}

let onboardingPages: [OnboardingPage] = [
    OnboardingPage(imageName: "onboard_1", title: "Only Books Can Help You", description: "Books can help you to increase your knowledge and become more successfully."),
    OnboardingPage(imageName: "onboard_2", title: "Learn Smartly", description: "It’s 2023 and it’s time to learn every quickly and smartly. All books are storage in cloud and you can access all of them from your laptop or PC."),
    OnboardingPage(imageName: "onboarding3", title: "Book Has Power To Chnage\nEverything", description: "Book has power to chnage yourself and make you more valueable.\n")
]
