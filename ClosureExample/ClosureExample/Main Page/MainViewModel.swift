//
//  MainViewModel.swift
//  ClosureExample
//
//  Created by Sezgin Çiftci on 31.03.2024.
//

import Foundation

final class MainViewModel {
    
    private let defaults = UserDefaults.standard
    private let incrementKey = "increment_key"
    
    var counterIncremented: ((String) -> Void)?
    
    func incrementValue() {
        let value = defaults.integer(forKey: incrementKey)
        defaults.setValue(value+1, forKey: incrementKey)
        
        let returnValue = defaults.integer(forKey: incrementKey)
        counterIncremented?("Counter: " + String(describing: returnValue))
    }
    
    func getStarCount(value: Float, completionHandler: @escaping (Int) -> Void) {
        DispatchQueue.main.async {
            let intvalue = Int((value/2).rounded(.down))
            completionHandler(intvalue)
        }
    }
    
    func loadData(onSuccess: () -> Void, onError: () -> Void) {
        
    }
}
