//
//  PostGridView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 23/08/23.
//

import SwiftUI

struct PostGridView: View {
    
    let user: User
    
    private let gridItem: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
    ]
    
    private let imageDemension: CGFloat = (UIScreen.main.bounds.width / 3) - 1

    
    var body: some View {
        LazyVGrid(columns: gridItem, spacing: 1){
            ForEach(posts) {post in
                Image(post.imagesUrl)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDemension, height: imageDemension)
                    .clipped()
                
                
                
            }
        }
    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(user: User.MOCK_USERS[0])
    }
}
