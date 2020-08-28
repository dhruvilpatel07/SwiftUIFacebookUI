//
//  LaunchScreenView.swift
//  SwiftUIFacebookUI
//
//  Created by Dhruvil Patel on 2020-08-28.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import SwiftUI

struct LaunchScreenView: View {
    @State var scale: CGFloat = 1
    var body: some View {
        
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            Image("logo")
                .background(Color.black)
                .scaleEffect(scale)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)

                    return withAnimation(repeated) {
                        self.scale = 0.9
                    }
                }
        }
        
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
