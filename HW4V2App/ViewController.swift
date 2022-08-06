//
//  ViewController.swift
//  HW4V2App
//
//  Created by Юлия on 06.08.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    @IBOutlet var redLabelNumber: UILabel!
    @IBOutlet var greenLabelNumber: UILabel!
    @IBOutlet var blueLabelNumber: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        setupSlider()
        setupLabel()
        
    }
    
    @IBAction func redSliderAction() {
        redLabelNumber.text = String(format: "%.2f", redSlider.value)
        changeColor()
    }
    
    
    @IBAction func greenSliderAction() {
        greenLabelNumber.text = String(format: "%.2f",greenSlider.value)
        changeColor()
    }
    


    @IBAction func blueSliderAction() {
        blueLabelNumber.text = String(format: "%.2f",blueSlider.value)
        changeColor()
    }
    
    
// MARK: - Private Methods
    private func setupLabel() {
        redLabel.text = "Red:    "
        redLabel.textColor = .white
        redLabelNumber.text = String(format: "%.2f", redSlider.value)
        redLabelNumber.textColor = .white
        
        greenLabel.text = "Green:"
        greenLabel.textColor = .white
        greenLabelNumber.text = String(format: "%.2f",greenSlider.value)
        greenLabelNumber.textColor = .white
        
        blueLabel.text = "Blue:   "
        blueLabel.textColor = .white
        blueLabelNumber.text = String(format: "%.2f",blueSlider.value)
        blueLabelNumber.textColor = .white
    }
    
    private func setupSlider() {
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        redSlider.minimumTrackTintColor = .red
        
        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        greenSlider.minimumTrackTintColor = .green
        
        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        blueSlider.minimumTrackTintColor = .blue
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
}

