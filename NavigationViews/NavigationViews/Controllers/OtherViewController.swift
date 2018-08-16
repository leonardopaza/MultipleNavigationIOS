//
//  OtherViewController.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 15/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit
import Alamofire

class OtherViewController: UIViewController {

    @IBOutlet weak var lblPreco: UILabel!
    @IBOutlet weak var btnAtualizar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Home 2"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        var viewControllers: [UIViewController] = []
        viewControllers.append(self)
        self.navigationController?.setViewControllers(viewControllers, animated: true)
        
        let buttonLogout = UIBarButtonItem(title: "Deslogar", style: .plain, target: self, action: #selector(acao))
        self.navigationItem.setRightBarButtonItems([buttonLogout], animated: true)
    }
    
    @objc func acao() {
        let pagina1ViewController = Pagina1ViewController()
        self.navigationController?.show(pagina1ViewController, sender: nil)
    }
    
    @IBAction func atualizarPrecoBitcoin(_ sender: Any) {
        self.recuperarPrecoBitcoin()
    }
    
    @IBAction func abrirOutraPagina(_ sender: Any) {
        let other2ViewController = Other2ViewController()
        self.navigationController?.show(other2ViewController, sender: nil)
    }
    
    func recuperarPrecoBitcoin() {
        self.btnAtualizar.setTitle("Atualizando...", for: .normal)
        
        Alamofire.request("https://blockchain.info/pt/ticker").validate().responseJSON { response in
            switch response.result {
            case .success:
                do {
                    if let objetoJson = try JSONSerialization.jsonObject(with: response.data!, options: []) as? [String: Any] {
                        if let brl = objetoJson["BRL"] as? [String: Any] {
                            if let preco = brl["buy"] as? Double {
                                let precoFormatado = self.formatarPreco(preco: NSNumber(value: preco))
                                
                                DispatchQueue.main.async {
                                    self.lblPreco.text = "R$ " + precoFormatado
                                    self.btnAtualizar.setTitle("Atualizar", for: .normal)
                                }
                            }
                        }
                    }
                } catch {
                    print("Erro ao formatar o retorno.")
                }
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func formatarPreco(preco: NSNumber) -> String {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        nf.locale = Locale(identifier: "pt_BR")
        
        if let precoFinal = nf.string(from: preco) {
            return precoFinal
        }
        
        return "0,00"
    }
}
