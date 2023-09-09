//
//  ViewController.swift
//  Dependency-Injection
//
//  Created by Terry Jason on 2023/9/8.
//

import UIKit
import Swinject

class ViewController: UIViewController {

    // Swinject
    let container: Container = {
        let container = Container()
        
        container.register(BgProvidingClass.self) { resolver in
            return BgProvidingClass()
        }
        
        container.register(NextVC.self) { resolver in
            let vc = NextVC(providerProtocol: resolver.resolve(BgProvidingClass.self))
            return vc
        }
        
        return container
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 250, height: 50))
        
        button.center = view.center
        
        button.setTitle("Next VC", for: .normal)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
//        button.backgroundColor = .black
        button.setTitleColor(.white, for: .normal)
        
        view.addSubview(button)
    }

    @objc private func buttonClicked() {
        if let vc = container.resolve(NextVC.self) {
            present(vc, animated: true)
        }
    }
    
}

