//
//  ViewController.swift
//  ProyectoPrincipal
//
//  Created by Aceleradora Mobile Perú on 12/06/18.
//  Copyright © 2018 Aceleradora Mobile Perú. All rights reserved.
//

import UIKit
import ModuloRegistrar

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
        
        let matches = Bundle.allFrameworks.filter {
            (aBundle) -> Bool in
            
            guard let indentifier = aBundle.bundleIdentifier else {
                    print("No lo encontró.")
                    return false
                }
                return indentifier.contains("ModuloRegistrar") && aBundle.isLoaded
            }
        
        if !matches.isEmpty {
            let storyboard = UIStoryboard(name: "Register", bundle: matches.last!)
            let viewController = storyboard.instantiateInitialViewController()
            viewController?.definesPresentationContext = true
            viewController?.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
            viewController?.modalTransitionStyle = UIModalTransitionStyle.crossDissolve
            self.present(viewController!, animated: true, completion: nil)
        }
        
        
    }
    
    
}

