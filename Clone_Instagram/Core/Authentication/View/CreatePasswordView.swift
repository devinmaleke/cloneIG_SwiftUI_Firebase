//
//  CreatePasswordView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 22/08/23.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @State private var password = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            Text("Create a Password")
                .font(.title2)
                .fontWeight(.bold)
            
            Text("Your password must be at least 6 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            SecureField("Password", text: $password)
                .autocapitalization(.none)
                .modifier(TextFieldModify())
                .padding(.top)
            
            NavigationLink{
                CompleteSignUpView()
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
