//
//  HomeViewController.swift
//  LaunchScreenAnimation
//
//  Created by Kirill Drozdov on 10.01.2022.
//


import UIKit
import SnapKit

class HomeViewController: UIViewController
{
    func elements()
    {
        let bit: UIButton = {
            let button = UIButton(type: .system)
            button.backgroundColor = .orange
            button.setTitle("Hello Push me", for: .normal)
            button.setTitleColor(.blue, for: .normal)
            view.addSubview(button)
            button.snp.makeConstraints { make in
                make.centerX.equalToSuperview()
                make.width.equalTo(250)
                make.bottom.equalToSuperview().inset(30)
                make.height.equalTo(40)
            }
            button.addTarget(self, action: #selector(desination), for: .touchUpInside)
            return button
        }()
        
        let label: UILabel = {
           let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
            label.textAlignment = .center
            label.font = .systemFont(ofSize: 24, weight: .bold)
            label.text = "Hello World!"
            label.center = view.center
            view.addSubview(label)
            return label
        }()
    }
    @objc private func desination()
    {
        let next: SecondViewController = SecondViewController()
        self.present(next, animated: true, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        elements()
    }
}


