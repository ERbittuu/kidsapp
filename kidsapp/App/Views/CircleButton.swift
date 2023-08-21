//
//  CircleButton.swift
//  kidsapp
//
//  Created by Utsav Patel on 05/08/23.
//

import SwiftUI

struct CircleButton: View {
    
    @State var circleTapped = false
    @State var circlePressed = false
    var function: () -> Void

    var body: some View {
        ZStack {
            Image(systemName: "xmark.circle.fill")
                .font(.system(size: 32, weight: .light))
                .offset(x: circlePressed ? -90 : 0, y: circlePressed ? -90 : 0)
                .rotation3DEffect(Angle(degrees: circlePressed ? 20 : 0),
                                        axis: (x: 10, y: -10, z: 0))
        }
        .frame(width: 32, height: 32)
        .background(
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 32, height: 32)//Button Size.
                    .shadow(color: Color.gray.opacity(0.8), radius: 4, x: -2, y: -2)
                    .shadow(color: Color.gray.opacity(0.4), radius: 2, x: 2, y: 2)
            }
        )
        .scaleEffect(circleTapped ? 1.2 : 1)
        .onTapGesture(count: 1) {
            self.circleTapped.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.circleTapped = false
                function()
            }
        }
    }
}
