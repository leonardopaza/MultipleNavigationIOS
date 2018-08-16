//
//  Other2ViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 15/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit

class Other2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Outra Pagina"
    }
    
    @IBAction func abrirOutraPagina2(_ sender: Any) {
        let other3ViewController = Other3ViewController()
        self.navigationController?.show(other3ViewController, sender: nil)
    }
    
    @IBAction func voltarHome2(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
