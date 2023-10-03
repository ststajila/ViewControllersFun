//
//  ViewControllerStacks.swift
//  ViewControllersFun
//
//  Created by STANISLAV STAJILA on 9/28/23.
//

import UIKit

class ViewControllerStacks: UIViewController {

    var name: String!
    
    //creating a variable to get access to the first view controler
    var delegate: ViewController!
    
    @IBOutlet weak var changeNameOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        print(name!)
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonAction(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    
    @IBAction func thirdScreenAction(_ sender: Any) {
        
        performSegue(withIdentifier: "screenThree", sender: self)
        
    }
    
    @IBAction func changeButton(_ sender: Any) {
        var name2 = changeNameOutlet.text!
        delegate.pony = name2
    }
    
    
}
