//
//  UIView+Extensions.swift
//  ClosureExample
//
//  Created by Sezgin Çiftci on 31.03.2024.
//

import UIKit

extension UIView {
    
    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        
        let nibName = type(of: self).description().components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        return view
    }
    
    func bind(to view: UIView) {
        self.frame = view.bounds
        view.addSubview(self)
    }
    
}
