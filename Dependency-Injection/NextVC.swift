//
//  NextVC.swift
//  Dependency-Injection
//
//  Created by Terry Jason on 2023/9/9.
//

import UIKit

class NextVC: UIViewController {

    private let providerProtocol: BgProviderProtocol?
    
    init(providerProtocol: BgProviderProtocol?) {
        self.providerProtocol = providerProtocol
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = providerProtocol?.bgColor ?? .white
    }
    
}

