//
//  ViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var viewControllers: [UIViewController] = []
        viewControllers.append(self)
        self.navigationController?.setViewControllers(viewControllers, animated: true)
    }
    
    @IBAction func abrirPagina2(_ sender: Any) {
        //Abre direto View Controller sem a view
        //let pagina2ViewController = Pagina2ViewController()
        //self.navigationController?.pushViewController(pagina2ViewController, animated: true)
        
        let pagina2StoryBoard: UIStoryboard = UIStoryboard(name: "Pagina2", bundle: nil)
        let pagina2ViewController = pagina2StoryBoard.instantiateViewController(withIdentifier: "pagina2") as! Pagina2ViewController
        self.navigationController?.pushViewController(pagina2ViewController, animated: true)
    }
    
    @IBAction func FecharAPP(_ sender: Any) {
        exit(0)
    }
}
