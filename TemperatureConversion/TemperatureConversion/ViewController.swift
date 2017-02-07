//
//  ViewController.swift
//  TemperatureConversion
//
//  Created by Ashutosh Sharma on 11/11/16.
//  Copyright © 2016 AshutoshSharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    static var fahrenheit : Double = 0.0
    @IBAction func submit(sender: AnyObject) {

        if let myCel = Double(Temperature.text!){
        print(myCel)
         ViewController.fahrenheit = (9*myCel+160)/5
            print(ViewController.fahrenheit)
        }
    }
    @IBOutlet weak var Temperature: UITextField!
    @IBAction func cancel(sender: AnyObject) {
        Temperature.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondVc  = segue.destinationViewController as! SecondViewController
        if let myCel = Double(Temperature.text!){
            print(myCel)
            ViewController.fahrenheit = (9*myCel+160)/5
            print(ViewController.fahrenheit)
        }
        secondVc.result = String(ViewController.fahrenheit)
        print(ViewController.fahrenheit)
        
    }


}

