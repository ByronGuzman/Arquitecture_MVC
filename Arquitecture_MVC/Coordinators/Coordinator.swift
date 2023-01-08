//
//  Coordinator.swift
//  Arquitecture_MVC
//
//  Created by User-F on 1/8/23.
//

import Foundation
import UIKit

protocol Coordinator {
    var viewController: UIViewController? { get }
    var navigationController: UINavigationController? { get }

    func start()
}

extension Coordinator {

    var viewController: UIViewController? { nil }
    var navigationController: UINavigationController? { nil }

}
