//
//  BigTitleViewController.swift
//  NavigationBarCustom
//
//  Created by Sigit Hanafi on 24/02/22.
//

import Foundation
import UIKit

class LargeTitleViewController: UIViewController {
    private var contentScrollView = ContentScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Large Title VC"
        view.backgroundColor = .white
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupView() {
        view.addSubview(contentScrollView)
        contentScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
