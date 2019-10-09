//
//  ContentView.swift
//  JoggingYourMemoryWithImplicitAndExcplicitAnimations
//
//  Created by ramil on 09.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var scale = false
    @State private var rotate = false
    @State private var fade = false
    
    
    var body: some View {
        Image("flower")
            .scaleEffect(scale ? 0.2 : 1)
            .rotationEffect(.degrees(rotate ? 0 : 360), anchor: .center)
            .opacity(fade ? 0.2 : 1)
            //Implicit Animation
            .animation(Animation.easeInOut(duration: 4).repeatCount(1, autoreverses: true))
            .onTapGesture {
                // Explicit Animation
                withAnimation(Animation.easeInOut(duration: 4).repeatCount(1, autoreverses: true)) {
                    self.scale.toggle()
                    self.rotate.toggle()
                    self.fade.toggle()
                }
//                self.scale.toggle()
//                self.rotate.toggle()
//                self.fade.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
