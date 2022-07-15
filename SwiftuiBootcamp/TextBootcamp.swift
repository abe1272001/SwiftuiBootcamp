//
//  TextBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/15.
//

import SwiftUI

struct TextBootcamp: View {
    
    //This is swift bootcap. I am really enjoying this course and learning alot!! I love swift!!!!!
    var body: some View {
        Text("Hello world!!".capitalized)
//            .font(.body)
//            .fontWeight(.semibold)
//            .bold()
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .green)
//            .font(.system(size: 24, weight: .bold, design: .serif))
//            .baselineOffset(10) // 行高
//            .kerning(1) // word spacing
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1) // 文字 fit 外框
        
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
