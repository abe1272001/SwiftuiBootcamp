//
//  ColorsBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/15.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary  // Color
//                Color(UIColor.secondarySystemBackground)  //UIColor for UIKit
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.5), radius: 10, x: 10, y: -10)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
