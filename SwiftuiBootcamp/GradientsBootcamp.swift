//
//  GradientsBootcamp.swift
//  SwiftuiBootcamp
//
//  Created by abe chen on 2022/7/18.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
        // Gradient in .fill()
            .fill(
//                Color.red
                
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    startPoint: .topLeading,
//                    endPoint: .bottomTrailing)
                
//                RadialGradient(
//                       gradient: Gradient(colors: [Color.red, Color.green]),
//                       center: .topLeading,
//                       startRadius: 5,
//                       endRadius: 400)
                
                AngularGradient(
                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    center: .topLeading,
                    angle: Angle.degrees(180 + 45)
                )
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootcamp()
    }
}
