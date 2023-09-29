//
//  ViewController.swift
//  ViewControllersFun
//
//  Created by STANISLAV STAJILA on 9/28/23.
//

import UIKit

class ViewController: UIViewController {

    var pony = ""
    @IBOutlet weak var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
        
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.systemPink
    }

    @IBAction func manualAction(_ sender: Any) {
        print("Hi")
        
         pony = textFieldOutlet.text!
        
        performSegue(withIdentifier: "toRed", sender: self)
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // NVC (next view controller) giving access to the next view controller
        let nvc = segue.destination as! ViewControllerStacks
        
        nvc.name = pony
        
    }
    
}

