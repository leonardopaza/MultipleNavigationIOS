//
//  OutraPagina2ViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018 Curso IOS. All rights reserved.
//

import UIKit

class OutraPagina2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func abrirOutraPagina3(_ sender: Any) {
        let outraPagina3StoryBoard: UIStoryboard = UIStoryboard(name: "OutraPagina3", bundle: nil)
        let outraPagina3ViewController = outraPagina3StoryBoard.instantiateViewController(withIdentifier: "outraPagina3") as! OutraPagina3ViewController
        self.navigationController?.show(outraPagina3ViewController, sender: nil)
    }
    
    @IBAction func voltarHome2(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
