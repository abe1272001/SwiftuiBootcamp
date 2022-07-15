//
//  ShapesBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/15.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
//        Circle() // 圓形
//        Ellipse() // 橢圓形
//        Capsule(style: .circular) // pill 形狀
        RoundedRectangle(cornerRadius: 10) // 矩形
//            .fill(.blue)
//            .foregroundColor(.pink)
//            .stroke(.green)
//            .stroke(Color.blue, lineWidth: 10)
//            .stroke(.orange, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50]))
            .trim(from: 0.2, to: 1.0) // 切割
//            .stroke(.purple , lineWidth: 50)
            .frame(width: 200, height: 100)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
