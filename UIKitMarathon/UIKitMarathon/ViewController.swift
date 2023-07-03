//
//  ViewController.swift
//  UIKitMarathon
//
//  Created by Тигран Левонян on 03.07.2023.
//

import UIKit

final class ViewController: UIViewController {

    private lazy var rectangleView: GradientView = {
        let view = GradientView()
        view.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        view.addSubview(rectangleView)

        NSLayoutConstraint.activate([
            rectangleView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rectangleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            rectangleView.widthAnchor.constraint(equalToConstant: 100),
            rectangleView.heightAnchor.constraint(equalTo: rectangleView.widthAnchor)
        ])
    }
}

