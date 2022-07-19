//
//  ForEachBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/19.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            ForEach(data, id: \.self) { data in
                Text(data)
            }
        }
    }
}

struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
