//
//  StandardViewController.swift
//  NavigationBarCustom
//
//  Created by Sigit Hanafi on 24/02/22.
//

import Foundation
import UIKit

class StandardViewController: UIViewController {

    private var contentScrollView = ContentScrollView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Standard VC"
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = false
    }
    
    private func setupView() {
        view.addSubview(contentScrollView)
        contentScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
