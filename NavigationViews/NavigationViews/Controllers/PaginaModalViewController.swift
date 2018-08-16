//
//  PaginaModalViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit

class PaginaModalViewController: UIViewController {

    var texto: String!
    
    let container = PaginaModalView()
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.container.fecharModal.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        self.view = container
        
        self.container.labelModal.text = texto
    }
    
    @objc func buttonAction(sender: UIButton!) {
        dismiss(animated: true, completion: nil)
    }
}
