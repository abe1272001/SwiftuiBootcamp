//
//  TernaryBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/21.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting" : "Ending")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 200 : 50
                )
            
//            if isStartingState {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.red)
//                    .frame(width: 200, height: 100)
//            } else {
//                RoundedRectangle(cornerRadius: 25)
//                    .fill(.blue)
//                    .frame(width: 200, height: 100)
//            }
            
            Spacer()
        }
    }
}

struct TernaryBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootcamp()
    }
}
