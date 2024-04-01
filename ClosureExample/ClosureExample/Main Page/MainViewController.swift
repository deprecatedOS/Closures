//
//  MainViewController.swift
//  ClosureExample
//
//  Created by Sezgin Çiftci on 31.03.2024.
//

import UIKit

final class MainViewController: UIViewController {
    
    @IBOutlet private weak var buttonView: ButtonView!
    @IBOutlet private weak var sliderView: SliderView!
    
    private var viewModel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Take Action From Button View
        buttonView.action = { [viewModel] in
            viewModel.incrementValue()
        }
        
        // Update Button View
        viewModel.counterIncremented = updateButtonView()
        
        
        // Update Slider View
        // Take Action From Slider View
        sliderView.action = { value in
            self.viewModel.getStarCount(value: value) { starCount in
                self.sliderView.updateStarImages(starCount)
            }
        }
        
        // Initial Value Assign
        viewModel.incrementValue()
        sliderView.updateStarImages(2)
        
    }
    
    func updateButtonView() -> ((String) -> Void)? {
        return { value in
            self.buttonView.updateLabel(value)
        }
    }
    
}
