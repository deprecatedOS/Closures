//
//  SliderView.swift
//  ClosureExample
//
//  Created by Sezgin Çiftci on 31.03.2024.
//

import UIKit

final class SliderView: UIView {
    
    @IBOutlet var starImageViews: [UIImageView]!
    @IBOutlet weak var slider: UISlider!
    
    var action: ((Float) -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib().bind(to: self)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadNib().bind(to: self)
    }
    
    func updateStarImages(_ value: Int) {
        let unvisibleCount = starImageViews.count - value
        
        starImageViews.forEach { iv in
            iv.isHidden = false
        }
        
        (0..<unvisibleCount).forEach { index in
            starImageViews[index].isHidden = true
        }
    }
    
    @IBAction func didEndEditing(_ sender: UISlider) {
        action?(sender.value)
    }
}
