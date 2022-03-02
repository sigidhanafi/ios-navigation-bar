//
//  StandardWithCustimBarItem.swift
//  NavigationBarCustom
//
//  Created by Sigit Hanafi on 02/03/22.
//

import Foundation
import UIKit

class StandardWithCustomBarItem: UIViewController {
    private var contentScrollView = ContentScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Standard with Custom Bar Item"
        view.backgroundColor = .white

        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
        
        configureNavigationBarItem()
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
    
    private func configureNavigationBarItem() {
//        right items - single
//        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        
//        left items - single
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .done, target: self, action: #selector(didTapButton))
        
//        navigation item with custom view
//        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
//        customView.text = "Hello"
//        customView.textAlignment = .center
//        customView.backgroundColor = .orange
//        customView.layer.cornerRadius = 8
//        customView.layer.masksToBounds = true
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: customView)
//
//        navigation item, with multiple items
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapButton)),
            UIBarButtonItem(image: UIImage(systemName: "person.circle"), style: .done, target: self, action: #selector(didTapButton))
        ]
    }
    
    private func setupView() {
        view.addSubview(contentScrollView)
        contentScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentScrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        contentScrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
    
    @objc private func didTapButton() {
        self.navigationController?.popViewController(animated: true)
    }
}
