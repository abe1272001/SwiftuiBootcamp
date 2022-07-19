//
//  SpacerBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/19.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        VStack() {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                    .frame(height:10)
                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            
            Spacer()
                .frame(width:10)
                .background(.orange)
            
            Rectangle()
                .frame(height: 55)
        }
//        .background(.yellow)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
