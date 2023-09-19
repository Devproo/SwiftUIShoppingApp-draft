//
//  CheckoutViewModel.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

class CheckoutViewModel: ObservableObject {
    
    @Published var cart: [Product] = []
    
    func addToCart(_ product: Product) {
        
        if let index = cart.firstIndex(where: {$0.id == product.id}) {
            
            cart.append(product)
        }
    }
    
    
    func removeFromCart(_ product: Product) {
        if let index = cart.firstIndex(where: {$0.id == product.id}) {
            cart.remove(at: index)
        }
        
        
    }
    
    func totalCost() -> Double {
        
        return cart.reduce(0.0) {$0 + $1.price}
            
        
    }
    
}

