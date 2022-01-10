//
//  HomeViewController.swift
//  LaunchScreenAnimation
//
//  Created by Kirill Drozdov on 10.01.2022.
//


import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    let label: UILabel = {
       let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 300))
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.text = "Hello World!"
        return label
    }()
    
//    let button: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Привет нажми плиз", for: .normal)
//
//
//        return button
//    }()
    
    
    func sfd(){
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
    }
    
    @objc private func desination(){
        let next: SecondViewController = SecondViewController()
        self.present(next, animated: true, completion: nil)
    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        sfd()
        view.addSubview(label)
//        view.addSubview(button)
        label.center = view.center
        //ダークモード対応
        view.backgroundColor = .systemBackground

    }

}

