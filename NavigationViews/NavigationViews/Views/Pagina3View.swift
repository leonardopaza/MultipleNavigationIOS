//
//  Pagina3View.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit
import Cartography

class Pagina3View: UIView {
    
    let voltarPagina2 = UIButton(type: .system)
    let voltarHome = UIButton(type: .system)
    let logar = UIButton(type: .system)
    
    let stackView = UIStackView()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        self.initViews()
        self.setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initViews() {
        self.backgroundColor = .white
        
        voltarPagina2.setTitle("Voltar Pagina 2", for: .normal)
        voltarPagina2.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        voltarHome.setTitle("Voltar Home", for: .normal)
        voltarHome.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        stackView.addArrangedSubview(voltarPagina2)
        stackView.addArrangedSubview(voltarHome)
        
        stackView.frame = CGRect(x: 100, y: 285, width: 200, height: 65)
        stackView.axis = .vertical;
        stackView.distribution = .fill;
        stackView.alignment = .fill;
        stackView.spacing = 5;
        
        addSubview(stackView)
        
        logar.setTitle("Logar", for: .normal)
        logar.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        addSubview(logar)
    }
    
    func setupConstraints() {
        constrain(stackView, self) { stkView, view in
            stkView.centerX == view.centerX
            stkView.centerY == view.centerY
        }
        
        constrain(self, logar) { view, botao in
            botao.bottom == view.bottom - 20
            botao.left == view.left + 16
            botao.right == view.right - 16
        }
    }
}
