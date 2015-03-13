//
//  Model.swift
//  Tarot
//
//  Created by Alexei Gudimenko on 3/03/2015.
//  Copyright (c) 2015 Alexei Gudimenko. All rights reserved.
//

import Foundation

class Model {
    let answers = ["Go forth with faith",
    "Magic is on your side",
    "Plant the seed and it will grow"]
    
    //constructor
    init() {
        //Add an element to the add of the array
        answers.append("Look to the stars to find your answer")
        
        //Insert an element at a specified index of the array
        //All other elements are moved forward one position
        answers.insert("You cannot do this alone", atIndex:3)
        
        //Removes an element at a specified index of the array
        //All other elements are moved backwards one position
        answers.removeAtIndex(4)
        
        //Removes last element of the array
        answers.removeLast()
    }
    
    //Returns the oracle's response to the question posed by user
    func respond()->String {
        //Returns a random integer within the range of indexes for the answers array
        let response = Int(arc4random_uniform(UInt32(answers.count)))
        
        //Gets the relevant message from the array at the specified random index
        return answers[response]
    }
}