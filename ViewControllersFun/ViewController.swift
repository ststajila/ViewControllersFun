//
//  ViewController.swift
//  ViewControllersFun
//
//  Created by STANISLAV STAJILA on 9/28/23.
//

protocol ViewControllerDelegate {
    //protocols like interfaces in java
    func changeName (s1: String)
}

import UIKit

//adopting the protocol
class ViewController: UIViewController,  ViewControllerDelegate {

    var pony = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textFieldOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
        
    }
    

    
    override func viewWillAppear(_ animated: Bool) {
        view.backgroundColor = UIColor.systemPink
        print(pony)
    }

    @IBAction func manualAction(_ sender: Any) {
        print("Hi")
        
         pony = textFieldOutlet.text!
        
        performSegue(withIdentifier: "toRed", sender: self)
        
    }
    
    
   //Automaticaly gets called for us, preparing for a segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // NVC (next view controller) giving access to the next view controller
        let nvc = segue.destination as! ViewControllerStacks
        
        nvc.name = pony
        
        //on the second screen only protocol will be passed
        nvc.delegate = self
        
    }
    
    func changeName(s1: String) {
        pony = s1
    }
    
    
}

