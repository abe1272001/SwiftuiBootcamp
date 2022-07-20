//
//  SafeAreaBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/20.
//

import SwiftUI

// Apple Developer: Human Interface Guidelines

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(width: .infinity, height: .infinity)
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
        .background {
            Color.red
                .edgesIgnoringSafeArea(.all) //old
                .ignoresSafeArea(edges: .all)
        }
        
        
        
        
        
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //foreground
//            VStack {
//                Text("Hello, World!!!!!!!!!!!")
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background {
//                Color.red
//            }
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
