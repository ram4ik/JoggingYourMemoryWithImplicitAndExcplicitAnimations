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
            .scaleEffect(1)
            .rotationEffect(.degrees(0), anchor: .center)
            .opacity(1)
            //Implicit Animation
            .animation(Animation.easeInOut(duration: 4).repeatCount(1, autoreverses: true))
            .onTapGesture {
                self.animateAll.toggle()
                print("toggled")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
