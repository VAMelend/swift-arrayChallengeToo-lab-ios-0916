//
//  ViewController.swift
//  ArrayChallengeDeuce2
//
//  Created by James Campagno on 7/7/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // This represents our deliLine.
    var deliLine: [String] = ["Michael", "Susan"]

    override func viewDidLoad() {
        super.viewDidLoad()
        nowServing()
        deliLineDescription()
        
        
    
    }
    
    // Create your methods here
    
    func addNameToDeliLine(name : String) {
        if name == "Billy Crystal" {
            deliLine.insert("Billy Crystal", atIndex: 0)
            print("Welcome Billy! You can sit wherever you like.")
        }
        else if name == "Meg Ryan" {
            deliLine.insert("Meg Ryan", atIndex: 0)
            print("Welcome Meg! You can sit wherever you like.")
        }
        else {
            deliLine.append("\(name)")
            print("Welcome \(name), you're number \(deliLine.count) in line.")
        }
        
    }
        
   
        

        func nowServing() {
            if deliLine.isEmpty {
                print ("There is no one to be served.")
            }
            else {
                print ("Now serving \(deliLine[0])")
            }
        }
    
    
        
        func deliLineDescription(){
            if deliLine.isEmpty {
                print ("The line is currently empty.")
            }
            else {
                var line =  "The line is:"
                for (index, value) in deliLine.enumerate() {
                    line += "\n \(index + 1). \(value)"
                }
                print (line)
            }
        

}
}

