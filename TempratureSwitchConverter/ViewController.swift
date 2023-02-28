//
//  ViewController.swift
//  TempratureSwitchConverter
//
//  Created by Andrew Iskowitz on 2/28/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var getTemp: UITextField!
    
    @IBOutlet var switchTemp: UISwitch!
    
    @IBOutlet var displayTemp: UILabel!
    
    @IBAction func updateTemp(_ sender: Any) {
    }
    var temp: Temprature?
    
    func changeTemp() {
        if switchTemp.isOn{
            displayTemp.text = Temprature(tempInFahrenheit: getTemp)
            
        } else {
            displayTemp.text = Temprature(tempInCelcius: getTemp)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let currentTemp = Double(getTemp.text!)
        if switchTemp.isOn {
            temp = Temprature(celcius: current)
        } else {
            temp = Temprature(fahrenheit: current)
        }
    }


}

