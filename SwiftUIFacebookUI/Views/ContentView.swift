//
//  ContentView.swift
//  SwiftUIFacebookUI
//
//  Created by Dhruvil Patel on 2020-08-20.
//  Copyright © 2020 Dhruvil Patel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var posts = testPost
    //@State var scale: CGFloat = 1
    @State var isActive:Bool = true
    
    var body: some View {

        HStack{
            //Implemented launch screen with animation
                if self.isActive {
                    LaunchScreenView()
                }else{
                 NavigationView{
                    List{
                    //Story view scroll
                    ScrollView(.horizontal) {
                        VStack(alignment: .leading) {
                            Text("Story").padding(.leading)
                            HStack() {
                                ForEach(posts) { post in
                                    NavigationLink(destination: DetailedStoryView(post: post)){
                                        StoryView(post: post)
                                        
                                    }
                                    
                                }
                            }
                        }
                    }.frame(height: 190).padding(.leading, -20).padding(.trailing, -20)
                    
                    //Post View
                    ForEach(posts){ post in
                        PostView(post: post)
                        }
                    }.navigationBarTitle("Fackebook UI")
                
                 }
            }
        }
        //turning isActive to false state after 4 sec
        .onAppear(){
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                withAnimation {
                    self.isActive = false
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
