//
//  FrameBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/18.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text("Hello, frame!")
            .background(.red)
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
            .frame(width: 150)
            .background(Color.purple)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color.pink)
            .frame(height: 400)
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
            .background(Color.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
