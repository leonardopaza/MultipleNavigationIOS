//
//  Pagina2ViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit

class Pagina2ViewController: UIViewController {

    let container = Pagina2View()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.container.abrirPagina3.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.container.abrirModal.addTarget(self, action: #selector(buttonModal), for: .touchUpInside)
        self.container.voltarHome.addTarget(self, action: #selector(buttonHome), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = container
        self.title = "Pagina 2"
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            let pagina3ViewController = Pagina3ViewController()
            self.navigationController?.show(pagina3ViewController, sender: nil)
        }
    }
    
    @objc func buttonModal(sender: UIButton!) {
        let paginaModalViewController = PaginaModalViewController()
        paginaModalViewController.texto = "A Pagina Modal"
        self.navigationController?.present(paginaModalViewController, animated: true, completion: nil)
    }
    
    @objc func buttonHome(sender: UIButton!) {
        self.navigationController?.popViewController(animated: true)
    }
}
