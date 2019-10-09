//
//  ContentView.swift
//  JoggingYourMemoryWithImplicitAndExcplicitAnimations
//
//  Created by ramil on 09.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animateAll = false
    
    var body: some View {
        Image("flower")
            .scaleEffect(animateAll ? 0.2 : 2)
            .rotationEffect(.degrees(animateAll ? 0 : 360), anchor: .center)
            .opacity(animateAll ? 0.2 : 1)
            //Implicit Animation
            .animation(Animation.easeInOut(duration: 4).repeatCount(1, autoreverses: true))
            .onTapGesture {
                self.animateAll.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
