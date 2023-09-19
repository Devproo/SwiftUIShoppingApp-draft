//
//  AllProductsView.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

struct AllProductsView: View {
    @ObservedObject var viewModel: ProductsViewModel
    
    var body: some View {
        NavigationStack {
            List(viewModel.products) { product in
                NavigationLink(destination: ProductView(viewModel: ProductViewModel(product: product))) {
                    Text(product.name)
                }
                
            }
            
        }
    }
}

#Preview {
    AllProductsView()
}
