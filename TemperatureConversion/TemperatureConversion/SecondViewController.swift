//
//  SecondViewController.swift
//  TemperatureConversion
//
//  Created by Ashutosh Sharma on 11/11/16.
//  Copyright © 2016 AshutoshSharma. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBAction func back(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    @IBOutlet weak var TempVal: UILabel!
    var result : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            TempVal.text = result
        print(TempVal)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
