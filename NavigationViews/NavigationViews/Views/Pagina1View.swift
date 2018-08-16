//
//  Pagina1View.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit
import Cartography

class Pagina1View: UIView {
    
    let abrirPagina2 = UIButton(type: .system)
    let fecharAPP = UIButton(type: .system)
    
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
        
        /*let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 25))
        label.center = CGPoint(x: 160, y: 285)
        label.textAlignment = .center
        label.text = "Pagina 1"*/
        
        abrirPagina2.setTitle("Abrir Pagina 2", for: .normal)
        abrirPagina2.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        abrirPagina2.tag = 1
        
        fecharAPP.setTitle("Fechar APP", for: .normal)
        fecharAPP.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        stackView.addArrangedSubview(abrirPagina2)
        stackView.addArrangedSubview(fecharAPP)
        
        stackView.frame = CGRect(x: 100, y: 285, width: 200, height: 65)
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
