//
//  ProfileNavStackView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 23/08/23.
//

import SwiftUI

struct ProfileNavStackView: View {
    
    let user: User
    var posts: [Post]{
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    var body: some View {
        NavigationStack{
            ScrollView{
                //header
                ProfileHeaderView(user: user)
                //post grid view
                
                PostGridView(posts: posts)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button{
                        AuthService.shared.signOut()
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
        
    }
}

struct ProfileNavStack_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNavStackView(user: User.MOCK_USERS[0])
    }
}
