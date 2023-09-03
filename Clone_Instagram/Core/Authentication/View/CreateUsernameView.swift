//
//  CreateUsernameView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 20/08/23.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            Text("Create Username")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Pick username for your new account. You can always change it later")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Username", text: $username)
                .autocapitalization(.none)
                .modifier(TextFieldModify())
                .padding(.top)
            
            NavigationLink{
                CreatePasswordView()
                    .navigationBarBackButtonHidden()
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
