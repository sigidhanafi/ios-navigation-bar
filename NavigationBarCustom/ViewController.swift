//
//  ViewController.swift
//  NavigationBarCustom
//
//  Created by Sigit Hanafi on 22/02/22.
//

import UIKit

class ViewController: UIViewController {
    
//    override var preferredStatusBarStyle: UIStatusBarStyle {
//        return .lightContent
//    }
    
    private var items: [String] = [] {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    private let tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Navigation Bars"
        view.backgroundColor = .white
        
        setupTableView()
        
        composeSectionData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupNavigationBar()
    }
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    private func composeSectionData() {
        items.append("Standard")
        items.append("Standard with Custom Color")
        items.append("Standard with Custom Navigation Item")
        items.append("Large Title")
        items.append("Large Title with Custom Color")
    }
    
    private func setupNavigationBar() {
        let navigationAppearance = UINavigationBarAppearance()
        
        navigationController?.navigationBar.prefersLargeTitles = false
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.tintColor = .label

        navigationController?.navigationBar.standardAppearance = navigationAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navigationAppearance
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = items[indexPath.row]
        cell.selectionStyle = .none
        cell.backgroundColor = .white
        cell.textLabel?.textColor = .black
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var vc = UIViewController()
        if indexPath.row == 0 {
            vc = StandardViewController()
        } else if indexPath.row == 1 {
            vc = StandardWithCustomColorViewController()
        } else if indexPath.row == 2 {
            vc = StandardWithCustomBarItem()
        } else if indexPath.row == 3 {
            vc = LargeTitleViewController()
        } else if indexPath.row == 4 {
            vc = LargeTitleWithCustomColorViewController()
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

