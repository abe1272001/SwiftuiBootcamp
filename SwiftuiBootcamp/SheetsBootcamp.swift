//
//  SheetsBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/22.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }) {
                Text("BUTTON")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
                
            }
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet) {
                //!! DO NOT ADD ANY CONDITIONAL LOGIC!!
                SecondScreen()
            }
            
        }
    }
}

struct SecondScreen: View {
    
    //(1)
    @Environment(\.presentationMode) var presentationMode
    //(2)
    @Environment(\.dismiss) private var dismiss

    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                //(1)
//                presentationMode.wrappedValue.dismiss()
                //(2)
                dismiss()
            }) {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
        SecondScreen()
    }
}
