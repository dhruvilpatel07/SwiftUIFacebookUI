//
//  Post.swift
//  SwiftUIFacebookUI
//
//  Created by Dhruvil Patel on 2020-08-20.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import Foundation

struct Post: Identifiable, Codable {
    var id: String = UUID().uuidString
    var userName: String
    var userImg: String
    var postTime: String
    var postCaption: String
    var storyPostCaption: String
}

#if DEBUG
let testPost = [
    Post(userName: "Dhruvil", userImg: "img", postTime: "7 hr", postCaption: "Nothing is impossible", storyPostCaption: "Let it be"),
    Post(userName: "Smit", userImg: "img1", postTime: "5 min", postCaption: "Hater gonna hate", storyPostCaption: "Finally summer"),
    Post(userName: "Kushal", userImg: "img2", postTime: "1 hr", postCaption: "Dream big", storyPostCaption: "Finally winter"),
    Post(userName: "Dhruvil", userImg: "img", postTime: "7 hr", postCaption: "Nothing is impossible", storyPostCaption: "Let it be"),
    Post(userName: "Smit", userImg: "img1", postTime: "5 min", postCaption: "Hater gonna hate", storyPostCaption: "Finally summer"),
    Post(userName: "Kushal", userImg: "img2", postTime: "1 hr", postCaption: "Dream big", storyPostCaption: "Finally winter")
]
#endif
