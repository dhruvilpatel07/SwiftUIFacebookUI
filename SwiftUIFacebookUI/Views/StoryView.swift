//
//  StoryView.swift
//  SwiftUIFacebookUI
//
//  Created by Dhruvil Patel on 2020-08-20.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import SwiftUI

struct StoryView: View {
    var post: Post
    var body: some View {
        VStack(alignment: .leading){
            Image(post.userImg)
                .resizable()
                .renderingMode(.original)
                .frame(width: 110, height: 110)
                .clipShape(Circle()).clipped()
                .overlay(
                Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: .black, radius: 3)
            
        }.frame(width: 120, height: 160)
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(post: testPost[2])
    }
}
