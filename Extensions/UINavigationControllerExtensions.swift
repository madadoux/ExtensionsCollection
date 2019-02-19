//
//  UINavigationControllerExtensions.swift
//  MedicalServices
//
//  Created by Mohamed Abdelhameed on 10/1/17.
//  Copyright © 2017 ITG. All rights reserved.
//

import UIKit

// Source: https://stackoverflow.com/a/33767837
extension UINavigationController {
    public func pushViewController(
        _ viewController: UIViewController,
        animated: Bool,
        completion: @escaping () -> Void)
    {
        pushViewController(viewController, animated: animated)
        
        guard animated, let coordinator = transitionCoordinator else {
            completion()
            return
        }
        
        coordinator.animate(alongsideTransition: nil) { _ in completion() }
    }
}
