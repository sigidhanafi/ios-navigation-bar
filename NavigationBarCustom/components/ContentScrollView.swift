//
//  ContentScrollView.swift
//  NavigationBarCustom
//
//  Created by Sigit Hanafi on 02/03/22.
//

import Foundation
import UIKit

class ContentScrollView: UIScrollView {
    
    private var contentStackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    private var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return view
    }()
    
    private var view2: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return view
    }()
    
    private var view3: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return view
    }()
    
    private var view4: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        contentStackView.addArrangedSubview(view1)
        contentStackView.addArrangedSubview(view2)
        contentStackView.addArrangedSubview(view3)
        contentStackView.addArrangedSubview(view4)
        
        self.addSubview(contentStackView)
        contentStackView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        contentStackView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        contentStackView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        contentStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        contentStackView.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
