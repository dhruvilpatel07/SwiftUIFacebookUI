//
//  PostView.swift
//  SwiftUIFacebookUI
//
//  Created by Dhruvil Patel on 2020-08-20.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import SwiftUI

struct PostView: View {
    
    var post: Post
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Image(post.userImg).resizable().frame(width: 60, height: 60).clipShape(Circle()).clipped()
                
                VStack(alignment: .leading){
                    Text(post.userName).font(.headline)
                    Text("Posted \(post.postTime) ago").font(.subheadline)
                }
                Spacer()
            }.padding(5)
            
            Text(post.postCaption).font(.subheadline).padding(.leading)
            Image(post.userImg).resizable().frame(height:280)
        }.padding(.leading, -20).padding(.trailing, -20)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: testPost[0])
    }
}
