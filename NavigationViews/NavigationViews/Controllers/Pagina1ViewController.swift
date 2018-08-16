//
//  Pagina1ViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit

class Pagina1ViewController: UIViewController {

    let container = Pagina1View()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.container.abrirPagina2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.container.fecharAPP.addTarget(self, action: #selector(buttonFechar), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = container
        self.title = "Home"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var viewControllers: [UIViewController] = []
        viewControllers.append(self)
        self.navigationController?.setViewControllers(viewControllers, animated: true)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            let pagina2ViewController = Pagina2ViewController()
            self.navigationController?.pushViewController(pagina2ViewController, animated: true)
        }
    }
    
    @objc func buttonFechar(sender: UIButton!) {
        exit(0)
    }
}
