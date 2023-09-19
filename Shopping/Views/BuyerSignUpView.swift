//
//  BuyerSignUpView.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

struct BuyerSignUpView: View {
    @State private var name: String
    @ObservedObject var viewModel: BuyerViewModel
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                viewModel.signUp(name: name)
                
                
            }, label: {
                Text(" Sign Up")
            })
        }
    }
}

#Preview {
    BuyerSignUpView()
}
