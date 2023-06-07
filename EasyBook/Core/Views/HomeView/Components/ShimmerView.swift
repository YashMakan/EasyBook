//
//  ShimmerView.swift
//  EasyBook
//
//  Created by Mobile Dev on 07/06/23.
//
import SwiftUI

struct ShimmerView: View {
    @State private var isAnimating = false
    
    var body: some View {
        Rectangle()
            .fill(Color.gray.opacity(0.3))
            .cornerRadius(5)
            .frame(width: 100, height: 140)
            .opacity(0.8)
//            .overlay(
//                RoundedRectangle(cornerRadius: 5)
//                    .stroke(Color.white, lineWidth: 0.5)
//                    .foregroundColor(.clear)
//                    .padding(2)
//                    .overlay(
//                        Group {
//                            Rectangle()
//                                .fill(Color.white)
//                                .cornerRadius(5)
//                                .frame(width: 24, height: 120)
//                                .mask(
//                                    LinearGradient(gradient: Gradient(colors: [.clear, .white, .clear]), startPoint: .top, endPoint: .bottom)
//                                        .offset(x: -60)
//                                        .rotationEffect(.degrees(isAnimating ? 360 : 0))
//                                )
//                        }
//                        .onAppear {
//                            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
//                                isAnimating = true
//                            }
//                        }
//                    )
//            )
    }
}
