//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Marie Park on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.

import Foundation

class Vehicle {
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }

    func goFast() {
        speed = maxSpeed
    }
    
    func halt() {
        speed = 0.0
    }
    
    func accelerate() {
        speed += (1/10) * maxSpeed
        if speed > maxSpeed {
          speed -= (1/10) * maxSpeed
        }
    }
    
    func decelerate() {
        speed -= (1/10) * maxSpeed
        if speed > 0 {
            speed += (1/10) * maxSpeed
        }
    }
    
    func turnRight() {
        heading += 90
        speed = speed / 2
        if heading > 360 {
            heading -= 360
        }
        if speed == 0 {
            heading = 0
        }
    }
    
    func turnLeft() {
        heading -= 90
        speed = speed / 2
        if heading < 0 {
            heading = 360 - heading
        }
        if speed == 0 {
            heading = 0
        }
    }


}

