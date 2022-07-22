//
//  BindingBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/21.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = .green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title)
                    .foregroundColor(.white)
                ButtonView(backgroundColor: $backgroundColor, parentTitle: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @Binding var parentTitle: String
    @State var buttonColor: Color = .blue
    
    var body: some View {
        Button(action: {
            backgroundColor = .orange
            parentTitle = "NEW Title!!!!"
            buttonColor = .pink
        }) {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
