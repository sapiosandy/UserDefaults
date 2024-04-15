//
//  ViewController.swift
//  UserDefaults
//
//  Created by Sandra Gomez on 4/15/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var mySlider: UISlider!
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveData(_ sender: UIButton) {
        UserDefaults.standard.set(myTextField.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    
    @IBAction func clearData(_ sender: UIButton) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        myTextField.text = ""
        
    }
    
    @IBAction func loadData(_ sender: UIButton) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        myTextField.text = UserDefaults.standard.string(forKey: "Text")
    }
    
    
}

