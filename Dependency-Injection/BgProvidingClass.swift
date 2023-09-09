//
//  BgProviderClass.swift
//  Dependency-Injection
//
//  Created by Terry Jason on 2023/9/8.
//

import Foundation
import UIKit

class BgProvidingClass: BgProviderProtocol {
    var bgColor: UIColor {
        let bgColors: [UIColor] = [.systemMint, .systemRed, .systemGray, .systemGreen]
        return bgColors.randomElement()!
    }
}

