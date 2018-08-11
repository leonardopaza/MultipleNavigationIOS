//
//  OutraPagina3ViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018 Curso IOS. All rights reserved.
//

import UIKit

class OutraPagina3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func voltarOutraPagina2(_ sender: Any) {
        for controller in self.navigationController!.viewControllers as Array {
            if controller.isKind(of: OutraPagina2ViewController.self) {
                self.navigationController!.popToViewController(controller, animated: true)
                break
            }
        }
    }
    
    @IBAction func voltarHome2(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
