//
//  ViewController.swift
//  ColorHW
//
//  Created by Александр Матукин on 23.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        redSlider.tintColor = UIColor.red
        greenSlider.tintColor = UIColor.green
        blueSlider.tintColor = UIColor.blue
        
    }
    func colorsView() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

    @IBAction func redSliderAction() {
        colorsView()
        redLabel.text = String(redSlider.value)
    }
    @IBAction func greenSliderAction() {
        colorsView()
        greenLabel.text = String(greenSlider.value)
    }
    @IBAction func blueSliderAction(_ sender: Any) {
        colorsView()
        blueLabel.text = String(blueSlider.value)
    }
    
}

