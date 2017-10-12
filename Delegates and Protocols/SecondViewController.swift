//
//  SecondViewController.swift
//  Delegates and Protocols
//
//  Created by Jesse on 10/12/17.
//  Copyright © 2017 Jesse Hwang. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var textBoxTwo: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        labelTwo.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonBackPressed(_ sender: Any) {
        delegate?.dataReceived(data: textBoxTwo.text!)
        
        dismiss(animated: true, completion: nil)
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
