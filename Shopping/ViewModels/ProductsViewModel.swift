//
//  ProductsViewModel.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

class ProductsViewModel: ObservableObject {
    @Published var products: [Product] = []
    
    func fetchProducts() {
        self.products = [
            Product(id: 1, name: "Product 1", description: "Description 1", price: 10.0, isPurchased: false),
            Product(id: 2, name: "Product 2", description: "Description 2", price: 15.0, isPurchased: false),
        ]
    }
    
    func purchaseProduct(_ product: Product) {
        if let index = products.firstIndex(where: {$0.id == product.id}) {
            products[index].isPurchased = true
        }
        
    }
}

