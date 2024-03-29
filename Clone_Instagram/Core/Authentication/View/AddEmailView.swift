//
//  AddEmailView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 20/08/23.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("You'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            TextField("Email", text: $email)
                .autocapitalization(.none)
                .modifier(TextFieldModify())
                .padding(.top)
            
            NavigationLink{
                CreateUsernameView()
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
