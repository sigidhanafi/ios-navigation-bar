//
//  StandardWithCustomColorViewController.swift
//  NavigationBarCustom
//
//  Created by Sigit Hanafi on 02/03/22.
//

import Foundation
import UIKit

class StandardWithCustomColorViewController: UIViewController {
    private var contentScrollView = ContentScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Standard with Custom Color"
        view.backgroundColor = .white
        
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        let navigationAppearance = UINavigationBarAppearance()
        navigationAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationAppearance.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationAppearance.backgroundColor = .systemCyan

        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = .white

        navigationController?.navigationBar.standardAppearance = navigationAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationAppearance
    }
    
    private func setupView() {
        view.addSubview(contentScrollView)
        contentScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
