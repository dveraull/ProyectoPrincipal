//
//  ViewController.swift
//  ProyectoPrincipal
//
//  Created by Aceleradora Mobile Perú on 12/06/18.
//  Copyright © 2018 Aceleradora Mobile Perú. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyBoard))
        self.view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func dismissKeyBoard(){
        self.view.endEditing(true)
    }
    
    @IBAction func btnIngresarPressed(_ sender: Any) {
        print("Se llama al módulo registrar.")
    }
    
    
}

