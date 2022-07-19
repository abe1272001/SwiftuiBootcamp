//
//  PaddingAndSpacerBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/19.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of what we will do on this screen, It is multiple lines and we will align the test to the leading edge")
//                .multilineTextAlignment(.center)
        }
        .padding()
        .padding(.vertical, 30)
        .background(
//            .red
            Color.white
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

struct PaddingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootcamp()
    }
}
