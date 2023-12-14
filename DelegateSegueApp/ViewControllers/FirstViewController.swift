//
//  ViewController.swift
//  DelegateSegueApp
//
//  Created by Антон Баландин on 12.12.23.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var greetingTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let secondVC = segue.destination as? SecondViewController else { return }
        
        secondVC.greeting = greetingTextField.text ?? "Текст не введен"
    }
    
    @IBAction func buttonAction() {
        
    }
    

}

