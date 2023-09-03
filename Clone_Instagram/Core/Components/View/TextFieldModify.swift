//
//  TextFieldModify.swift
//  Clone_Instagram
//
//  Created by Devin Maleke on 20/08/23.
//

import SwiftUI

struct TextFieldModify: ViewModifier{
    func body(content: Content) -> some View {
        content
        .font(.subheadline)
        .padding(12)
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .padding(.horizontal,24)
    }
}
