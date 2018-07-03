//
//  HomeViewController.swift
//  ProyectoPrincipal
//
//  Created by Aceleradora Mobile Perú on 22/06/18.
//  Copyright © 2018 Aceleradora Mobile Perú. All rights reserved.
//

import UIKit
import Toast_Swift
import FavoriteTableView

class HomeViewController: UIViewController, FavoriteTableViewDelegate{


    @IBOutlet weak var tblFavoritos: FavoriteTableView!
    
    var listFavorite: [Favorite] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        listFavorite = [
            Favorite(title: "Account", subtitle: "123123-234234-675"),
            Favorite(title: "Cuenta Scotiabank", subtitle: "32534534-345345-435"),
            Favorite(title: "Cuenta BBVA", subtitle: "234235-2354234-432")
        ]
        self.tblFavoritos.delegateFavorite = self
        self.tblFavoritos.configure(list: listFavorite)        
//        self.tblFavoritos.configure()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnToastPressed(_ sender: Any) {
        
        self.view.makeToast("This is a piece of toast", duration: 2.0, point: CGPoint(x: 110.0, y: 110.0), title: "Toast Title", image: UIImage(named: "toast.png")) { didTap in
            if didTap {
                print("completion from tap")
            } else {
                print("completion without tap")
            }
        }
    }
    
    func didSelectRowAt(indexPath: IndexPath) {
         self.performSegue(withIdentifier: "showDetail", sender: nil)
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
