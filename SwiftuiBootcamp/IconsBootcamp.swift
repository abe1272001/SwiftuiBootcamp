//
//  IconsBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/18.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        // SF Symbol has multicolor icon
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) // for multicolor 
            .font(.largeTitle)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .scaledToFill()
//            .scaledToFit()
//            .font(.title)
//            .font(.system(size: 200))
//            .foregroundColor(.red)
//            .frame(width: 300, height: 300)
//            .clipped()
    }
}

struct IconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootcamp()
    }
}
