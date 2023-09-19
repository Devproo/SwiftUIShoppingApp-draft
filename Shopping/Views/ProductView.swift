//
//  ProductView.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

struct ProductView: View {
    @ObservedObject var viewModel: ProductViewModel
    var body: some View {
        VStack {
            Text(viewModel.product.name)
            Text(viewModel.product.description)
            Text("Price: $\(viewModel.product.price)")
            
            Button(action:  {
                
                viewModel.
            }, label: {
                Text("Purchase")
            })
        }
    }
}

#Preview {
    ProductView()
}
