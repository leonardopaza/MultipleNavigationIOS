//
//  PaginaModalViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018 Curso IOS. All rights reserved.
//

import UIKit

class PaginaModalViewController: UIViewController {

    var texto: String!
    @IBOutlet weak var modalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        modalLabel.text = texto
    }
    
    @IBAction func fecharModal(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
