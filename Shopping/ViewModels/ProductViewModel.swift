//
//  ProductViewModel.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

class ProductViewModel: ObservableObject {
    @Published var product:Product
    
    init(product: Product) {
        self.product = product
    }
    
    func purchaseProduct() {
        
        ProductsViewModel().purchaseProduct(product)
    }
    
}
