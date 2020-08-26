//
//  DetailedStoryView.swift
//  SwiftUIFacebookUI
//
//  Created by Dhruvil Patel on 2020-08-21.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import SwiftUI

struct DetailedStoryView: View {
    var post:Post
    var body: some View {
        VStack(spacing: 20.0) {
            Image(post.userImg)
            .resizable()
                .frame(height: 200)
            .cornerRadius(20)
                .shadow(color: .white, radius: 10)
                .padding()
                //.edgesIgnoringSafeArea(.top)
            
            Text(post.storyPostCaption)
            .padding()
            //.offset(x: 0, y: -90)
            .font(.title)
            .foregroundColor(.black)
                            
            Spacer()

        }
        .navigationBarTitle(Text(post.userName), displayMode: .inline)
        .background(Color.init(.opaqueSeparator))
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct DetailedStoryView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedStoryView(post: testPost[0])
    }
}
