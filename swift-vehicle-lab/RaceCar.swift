//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Marie Park on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        self.driver = driver
        self.sponsors = sponsors
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        speed += (1/5) * maxSpeed
        if speed > maxSpeed {
            speed -= (1/5) * maxSpeed
        }
    }
    
    override func decelerate() {
        speed -= (1/5) * maxSpeed
        if speed < 0 {
            speed += (1/5) * maxSpeed
        }
    }
    
    func driftRight() {
            heading += 90
            speed -= speed/4
        
        if heading > 360 {
            heading -= 360
        }
        if speed == 0 {
            heading = 0
        }
    }
    
    func driftLeft() {
            heading -= 90
            speed -= speed/4
        
        if heading < 0 {
            heading += 360
        }
        if speed == 0 {
            heading = 0
        }
    }
    
}
