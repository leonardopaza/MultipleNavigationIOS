//
//  OutraPaginaViewController.swift
//  MultipleNavigation
//
//  Created by Leonardo Paza on 11/08/18.
//  Copyright © 2018 Curso IOS. All rights reserved.
//

import UIKit

class OutraPaginaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var viewControllers: [UIViewController] = []
        viewControllers.append(self)
        self.navigationController?.setViewControllers(viewControllers, animated: true)
        
        let buttonLogout = UIBarButtonItem(title: "Deslogar", style: .plain, target: self, action: #selector(acao))
        let buttonDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(acao))
        //self.navigationItem.rightBarButtonItems = [buttonDone, buttonLogout]
        //self.navigationItem.rightBarButtonItem  = buttonLogout
        self.navigationItem.setRightBarButtonItems([buttonDone, buttonLogout], animated: true)
        
        /*
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "imagename"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(acao), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "imagename"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn2.addTarget(self, action: #selector(acao), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)
        
        self.navigationItem.setRightBarButtonItems([item1,item2], animated: true)*/
    }
    
    @objc func acao() {
        let mainStoryBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = mainStoryBoard.instantiateViewController(withIdentifier: "main") as! ViewController
        self.navigationController?.show(viewController, sender: nil)
    }
    
    @IBAction func abrirOutraPagina2(_ sender: Any) {
        let outraPagina2StoryBoard: UIStoryboard = UIStoryboard(name: "OutraPagina2", bundle: nil)
        let outraPagina2ViewController = outraPagina2StoryBoard.instantiateViewController(withIdentifier: "outraPagina2") as! OutraPagina2ViewController
        self.navigationController?.show(outraPagina2ViewController, sender: nil)
    }
}
