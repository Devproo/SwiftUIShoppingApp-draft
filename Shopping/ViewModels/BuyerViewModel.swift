//
//  BuyerViewModel.swift
//  Shopping
//
//  Created by ipeerless on 19/09/2023.
//

import SwiftUI

class BuyerViewModel: ObservableObject {
    @Published var buyer: Buyer?
    
    func signUp(name: String) {
        let newBuyer = Buyer(id: 1, name: name, purchasedaProducts: [])
        buyer = newBuyer
    }
    
    func sigIn(name: String) {
        
        let existingBuyer = Buyer(id: 1, name: name, purchasedaProducts: [])
        buyer = existingBuyer
    }
    
    
}
