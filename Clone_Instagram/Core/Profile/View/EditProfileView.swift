//
//  EditProfileView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 30/08/23.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: PhotosPickerItem?
    @State private var name = ""
    @State private var bio = ""
    
    var body: some View {
        VStack{
            //toolbar
            
            VStack{
                HStack{
                    Button("Cancel"){
                        dismiss()
                    }
                    
                    Spacer()
                    
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                    
                    Button{
                        print("Update Profile info")
                    }label: {
                        Text("Done")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    }
                }
                .padding(.horizontal)
                
                Divider()
            }
            //edit profile pic
            
            PhotosPicker(selection: $selectedImage){
                VStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 80, height: 80)
                        .foregroundColor(.white)
                        .background(.gray)
                        .clipShape(Circle())
                    
                    Text("Edit Profile Picture")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Divider()
                }
            }
            //edit profile info
            VStack{
                EditProfileRowView(title: "Name", placeholder: "Enter your name", text: $name)
                EditProfileRowView(title: "Bio", placeholder: "Enter your bio", text: $bio)
            }
            
            Spacer()
        }
    }
}

struct EditProfileRowView: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    
    var body: some View{
        HStack{
            Text(title)
                .padding(.leading,8)
                .frame(width: 100, alignment: .leading)
            
            VStack{
                TextField(placeholder, text: $text)
                
                Divider()
            }
        }
        .font(.subheadline)
        .frame(height: 36)
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView()
    }
}
