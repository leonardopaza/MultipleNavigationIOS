//
//  Pagina3ViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class Pagina3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func voltarPagina2(_ sender: Any) {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController];
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 2], animated: true);
    }
    
    @IBAction func voltarHome(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func logar(_ sender: Any) {
        let outraPaginaStoryBoard: UIStoryboard = UIStoryboard(name: "OutraPagina", bundle: nil)
        let outraPaginaViewController = outraPaginaStoryBoard.instantiateViewController(withIdentifier: "outraPagina") as! OutraPaginaViewController
        self.navigationController?.show(outraPaginaViewController, sender: nil)
    }
}
