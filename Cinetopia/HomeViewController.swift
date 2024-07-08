//
//  ViewController.swift
//  Cinetopia
//
//  Created by lucas gatica on 18/06/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var label:UILabel = {
        let laberl = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "hello world!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .background
        addSubView()
        setupConstraints()
        
    }

    func addSubView(){
        view.addSubview(label)
    }
    
    func setupConstraints(){
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            
    
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
        ])
    }

}

