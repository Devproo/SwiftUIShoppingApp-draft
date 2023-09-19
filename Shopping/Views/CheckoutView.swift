//
//  CheckoutView.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

struct CheckoutView: View {
    @Published var viewModel: CheckoutViewModel
    var body: some View {
        List(viewModel.cart) { product in
            Text(product.name)
        }
        Text(" Total Cost: $\(viewModel.totalCost())")
    }
}

#Preview {
    CheckoutView()
}
