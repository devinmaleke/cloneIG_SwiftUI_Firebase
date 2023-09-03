//
//  CompleteSignUpView.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 23/08/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @State private var password = ""
    @Environment (\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            Text("Welcome to Instagram, Devin Maleke")
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)

            Text("Click below to complete registration and start using instagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
                        
            NavigationLink{
                CreateUsernameView()
            }label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            .padding(.vertical)
            
            
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

struct CompleteSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSignUpView()
    }
}
