//
//  Other3ViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 15/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit

class Other3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Outra Pagina 2"
    }
    
    @IBAction func voltarOutraPagina(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: Other2ViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func voltarHome2(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
