//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Marie Park on 10/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.


//ADD A NEW METHOD

//Jets (i.e. military jets) have a special ability called "using the afterburner" that allows them to reach incredible speeds.

//Write a new method named afterburner() which takes no arguments and provides no return. This method should set the speed to twice the value of the jet's maxSpeed but only if the jet is in flight and already traveling at its maximum speed.

import Foundation

class Jet: Plane {

    override func climb() {
        if inFlight == true {
            altitude += (1/5) * maxAltitude
            decelerate()
            
            if altitude > maxAltitude {
                altitude -= (1/5) * maxAltitude
            }
        }
    }
    
    override func dive() {
        if inFlight == true {
            altitude -= (1/5) * maxAltitude
            accelerate()
            
            if altitude < 0 {
                altitude += (1/5) * maxAltitude
            }
        }
    }

    func afterburner() {
        if inFlight == true && speed == maxSpeed {
            speed = 2 * maxSpeed
        }
    }

}


