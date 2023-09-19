//
//  BuyerSignInView.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

struct BuyerSignInView: View {
    @State private var name: String
    @ObservedObject var viewModel: BuyerViewModel
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                            .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: {
                viewModel.sigIn(name: name)
            }, label: {
                Text(" SIGN In")
            })
        }
    }
}

#Preview {
    BuyerSignInView()
}
