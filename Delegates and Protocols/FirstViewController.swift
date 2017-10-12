//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by Jesse on 10/12/17.
//  Copyright © 2017 Jesse Hwang. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var textBoxOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    
    @IBAction func buttonForwardPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textBoxOne.text!
            
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        labelOne.text = data
    }
    
}

