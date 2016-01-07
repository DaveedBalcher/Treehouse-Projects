//
//  ViewController.swift
//  FunFacts
//
//  Created by David Balcher on 11/15/14.
//  Copyright (c) 2014 David Balcher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()
    var previousColor: UIColor?
    var previousFact: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        
        //This updates background color and checks that random values do not repeat
        var randomColor = colorWheel.randomColor()
        while randomColor == previousColor {
            randomColor = colorWheel.randomColor()
        }
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        previousColor = randomColor
        
        
        
        //This updates fun facts and checks that random values do not repeat
        var randomFact = factBook.randomFact()
        while randomFact == previousFact {
            randomFact = factBook.randomFact()
        }
        funFactLabel.text = randomFact
        previousFact = randomFact
    }
    
}