//
//  LoginController.swift
//  TestLib
//
//  Created by Maksym on 12/10/2021.
//

import UIKit

final class TestLibLoginController: UIViewController {
    
    private lazy var nextButton: UIButton = {
        let l = UIButton(frame: .init(x: 0, y: 0, width: 150, height: 50))
        l.backgroundColor = .green
        l.setTitleColor(.black, for: .normal)
        l.addTarget(self, action: #selector(nextView), for: .touchUpInside)
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
        view.backgroundColor = .blue
        view.addSubview(nextButton)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        nextButton.center = view.center
    }
    
    @objc private func nextView() {
        let nextView = TestLibLoggedController()
        nextView.modalPresentationStyle = .fullScreen
        self.present(nextView, animated: true, completion: nil)
    }
}

