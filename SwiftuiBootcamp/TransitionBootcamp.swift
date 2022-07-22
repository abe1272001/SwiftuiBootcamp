//
//  TransitionBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/22.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
//            Color.red
//
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
//                    .transition(.move(edge: .bottom))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))
//                    .transition(AnyTransition.scale.animation(.easeInOut))
                // MARK: 自訂
                    .transition(.asymmetric(
                        insertion: AnyTransition.move(edge: .leading),
                        removal: AnyTransition.move(edge: .bottom)))
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
