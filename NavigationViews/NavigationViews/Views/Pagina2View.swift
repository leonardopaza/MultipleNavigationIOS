//
//  Pagina2View.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit
import Cartography

class Pagina2View: UIView {
    
    let abrirPagina3 = UIButton(type: .system)
    let abrirModal = UIButton(type: .system)
    let voltarHome = UIButton(type: .system)
    
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
        
        abrirPagina3.setTitle("Abrir Pagina 3", for: .normal)
        abrirPagina3.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        abrirPagina3.tag = 1
        
        abrirModal.setTitle("Abrir Modal", for: .normal)
        abrirModal.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        voltarHome.setTitle("Voltar Home", for: .normal)
        voltarHome.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        stackView.addArrangedSubview(abrirPagina3)
        stackView.addArrangedSubview(abrirModal)
        stackView.addArrangedSubview(voltarHome)
        
        stackView.frame = CGRect(x: 100, y: 285, width: 200, height: 95)
        stackView.axis = .vertical;
        stackView.distribution = .fill;
        stackView.alignment = .fill;
        stackView.spacing = 5;
        
        addSubview(stackView)
    }
    
    func setupConstraints() {
        constrain(stackView, self) { stkView, view in
            stkView.centerX == view.centerX
            stkView.centerY == view.centerY
        }
    }
}
