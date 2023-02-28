//
//  Tempreature.swift
//  TempratureSwitchConverter
//
//  Created by Andrew Iskowitz on 2/28/23.
//

import Foundation
struct Temprature {
    var tempInFahrenheit: Double{
        didSet{
            let temp = (tempInFahrenheit - 32) * (5.0/9)
            
            if (tempInCelcius != temp){
                tempInCelcius = temp
            }
        }
    }
    var tempInCelcius: Double{
        didSet{
            let temp = (tempInCelcius * (9/5.0)) + 32
            
            if (tempInFahrenheit != temp){
                tempInFahrenheit = temp
            }
        }
    }
    
    init(tempInFahrenheit: Double){
        self.tempInFahrenheit = tempInFahrenheit
        tempInCelcius = (tempInFahrenheit - 32) * (5.0/9)
    }
    init(tempInCelcius: Double){
        self.tempInCelcius = tempInCelcius
        tempInFahrenheit = (tempInCelcius * (9/5.0)) + 32
    }
}
