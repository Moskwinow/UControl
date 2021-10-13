//
//  LoggedController.swift
//  TestLib
//
//  Created by Maksym on 12/10/2021.
//

import UIKit

final class TestLibLoggedController: UIViewController {
    
    private lazy var backButton: UIButton = {
        let l = UIButton(frame: .init(x: 0, y: 0, width: 150, height: 50))
        l.backgroundColor = .green
        l.setTitleColor(.black, for: .normal)
        l.addTarget(self, action: #selector(goBackView), for: .touchUpInside)
        return l
    }()
    
    public init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(backButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        backButton.center = view.center
    }
    
    @objc private func goBackView() {
        self.dismiss(animated: true, completion: nil)
    }
}
