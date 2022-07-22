//
//  StateBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/21.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                buttonView()
            }
            .foregroundColor(.white)
        }
    }
    
//    @ViewBuilder
    func buttonView() -> some View {
        HStack(spacing: 20) {
            Button("Button 1") {
                backgroundColor = .red
                myTitle = "Button 1 was pressed"
                count += 1
            }
            
            Button("Button 2") {
                backgroundColor = .purple
                myTitle = "Button 2 was pressed"
                count -= 1
            }
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
