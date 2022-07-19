//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/18.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    func GradientCircleView() -> some View {
        return Text("Hello, Overlay!")
            .background(
                //                Color.red
                //                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 100, height: 100, alignment: .center)
            )
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 120, height: 120, alignment: .center)
            )
    }
    
    func CircleWithBackground() -> some View {
        return Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.white)
            )
            .background(
                Circle()
                    .fill(Color.purple)
                    .frame(width: 110, height: 110)
            )
    }
    
    func RectangleWithOverlayAndBackground() -> some View {
        return Rectangle()
            .frame(width: 100, height: 100)
            .overlay(alignment: .topLeading) {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
            }
            .background(alignment: .bottomTrailing) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
            }
    }
    
    var body: some View {
//        GradientCircleView()
//        CircleWithBackground()
//        RectangleWithOverlayAndBackground()
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .purple.opacity(0.5), radius: 10, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing, content: {
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay {
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                            .shadow(color: .purple.opacity(0.5), radius: 10, x: 5, y: 10)
                    })
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
