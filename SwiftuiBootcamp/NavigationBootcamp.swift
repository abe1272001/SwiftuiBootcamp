//
//  NavigationBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/22.
//

import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello world") {
                    MyOtherScreen()
                }
                Text("hi")
                Text("hi")
                Text("hi")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: Text("Profile")) {
                        Image(systemName: "person.fill")
                    }
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MyOtherScreen()) {
                        Image(systemName: "gear")
                    }
                }
            }
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                //self made back button
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                
                NavigationLink("Click Here") {
                    Text("3rd Screen")
                }
            }
        }
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}
