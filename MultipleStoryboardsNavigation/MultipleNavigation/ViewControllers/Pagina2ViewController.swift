//
//  Pagina2ViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class Pagina2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func abrirPagina3(_ sender: Any) {
        let pagina3StoryBoard: UIStoryboard = UIStoryboard(name: "Pagina3", bundle: nil)
        let pagina3ViewController = pagina3StoryBoard.instantiateViewController(withIdentifier: "pagina3") as! Pagina3ViewController
        self.navigationController?.show(pagina3ViewController, sender: nil)
    }
    
    @IBAction func abrirModal(_ sender: Any) {
        let paginaModalStoryBoard: UIStoryboard = UIStoryboard(name: "PaginaModal", bundle: nil)
        let paginaModalViewController = paginaModalStoryBoard.instantiateViewController(withIdentifier: "paginaModal") as! PaginaModalViewController
        paginaModalViewController.texto = "A Pagina Modal"
        self.navigationController?.present(paginaModalViewController, animated: true, completion: nil)
        //self.present(paginaModalViewController, animated: true, completion: nil)
    }
    
    @IBAction func voltarHome(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}
