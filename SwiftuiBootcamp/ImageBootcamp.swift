//
//  ImageBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/18.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
//            .renderingMode(.template) // .template 將圖片變成可上色, 也可從 assets 做調整
            .resizable()
//            .aspectRatio(contentMode: .fill) // === .scaledToFill()
//            .scaledToFill()
//            .aspectRatio(contentMode: .fit) // === .scaledToFit()
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
//            .clipped()
//            .cornerRadius(150) // 會自動 fit frame 寬高
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)
//                Ellipse()
//            )
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
