//
//  Pagina3ViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit

class Pagina3ViewController: UIViewController {

    let container = Pagina3View()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.container.voltarPagina2.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.container.voltarHome.addTarget(self, action: #selector(buttonHome), for: .touchUpInside)
        self.container.logar.addTarget(self, action: #selector(buttonLogar), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = container
        self.title = "Pagina 3"
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let viewControllers: [UIViewController] = self.navigationController!.viewControllers as [UIViewController];
        self.navigationController!.popToViewController(viewControllers[viewControllers.count - 2], animated: true);
    }
    
    @objc func buttonHome(sender: UIButton!) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func buttonLogar(sender: UIButton!) {
        let otherViewController = OtherViewController()
        self.navigationController?.show(otherViewController, sender: nil)
    }
}
