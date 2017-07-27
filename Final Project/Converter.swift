//
//  Converter.swift
//  Final Project
//
//  Created by Kourosh Mobl on 7/27/17.
//  Copyright © 2017 Kourosh Mobl. All rights reserved.
//

import Foundation

class Converter: NSObject {
    func kiloToMiles(input: String) -> String {
    let miles = Double(input)! * 0.621371
   
    return "\(miles)"
    }

    func milesToKilos(input: String) -> String {
        let kilo = Double(input)! * 1.609344
        
        return "\(kilo)"
    }
    
    func cToF(input: String) -> String {
        let F = Double(input)! * 1.8 + 32
        
        return "\(F)"
    }
    
    func fToC(input: String) ->String {
        var C = Double(input)! - 32
        C = C * 0.5556
        
        return "\(C)"
    }
    
    
}



