//
//  ConditionalBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/21.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                isLoading.toggle()
            }) {
                Text("Is Loading: \(isLoading.description)")
            }
            
            if isLoading {
                ProgressView()
            } else {
                
            }
//            
//            Button(action: {
//                showCircle.toggle()
//            }) {
//                Text("Circle Button: \(showCircle.description)")
//            }
//
//            Button(action: {
//                showRectangle.toggle()
//            }) {
//                Text("Rectangle Button: \(showRectangle.description)")
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if !showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 25)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
