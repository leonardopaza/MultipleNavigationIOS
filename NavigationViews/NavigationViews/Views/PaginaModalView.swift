//
//  PaginaModalView.swift
//  NavigationViews
//
//  Created by Leonardo Paza on 12/08/18.
//  Copyright © 2018 Leonardo Paza. All rights reserved.
//

import UIKit
import Cartography

class PaginaModalView: UIView {
    
    let labelModal = UILabel()
    let fecharModal = UIButton(type: .system)
    
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
        
        labelModal.frame = CGRect(x: 0, y: 0, width: 200, height: 25)
        labelModal.center = CGPoint(x: 160, y: 285)
        labelModal.textAlignment = .center
        labelModal.text = "Pagina Modal"
        
        fecharModal.setTitle("Fechar Modal", for: .normal)
        fecharModal.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
        
        stackView.addArrangedSubview(labelModal)
        stackView.addArrangedSubview(fecharModal)
        
        stackView.frame = CGRect(x: 100, y: 285, width: 200, height: 60)
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
