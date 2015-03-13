//
//  ViewController.swift
//  Tarot
//
//  Created by Alexei Gudimenko on 3/03/2015.
//  Copyright (c) 2015 Alexei Gudimenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Property referencing the label in the view@
    @IBOutlet weak var lblAnswers: UILabel!
    //@IBoutlet weak var lblAnswers: UILabel? - use this option to manually unwrap var later
    
    /*
     * ! symbol is the same as ? - in other words, it declares an optional
     * variable. However ! means it'll be automatically unwrapped, where as 
     * with '?' you'll have to explicitly apply the '!' to unwrap it later.
     * 
     * use implicit unwrapping (!) when you know in advance the variable 
     * will ALWAYS have a value after some logical point 
     * (http://ericasadun.com/2014/06/13/swift-those-ing-swift-variables-unwrapping-and-implicit-unwrapping/
     */

    //Property referncing the model for managing data and business logic
    var model = Model()
    
    //Respond to the user clicking a button by providing advice from the Oracle
    @IBAction func askTheOracle(sender: UIButton) {
        lblAnswers.text = model.respond()
        //lblAnswers!.text = model.respond() - use this option to manually unwrap var if ? at declaration
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

