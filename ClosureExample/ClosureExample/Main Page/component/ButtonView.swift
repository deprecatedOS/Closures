//
//  ButtonView.swift
//  ClosureExample
//
//  Created by Sezgin Çiftci on 31.03.2024.
//

import UIKit

final class ButtonView: UIView {
    
    @IBOutlet private weak var counterLabel: UILabel!
    
    var action: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib().bind(to: self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib().bind(to: self)
    }
    
    func updateLabel(_ value: String) {
        counterLabel.text = value
    }
    
    @IBAction func incrementerButtonTapped(_ sender: Any) {
        action?()
    }
    
}
