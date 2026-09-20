//
//  BaseController.swift
//  movieApp
//
//  Created by Avaz Cafarov on 19.09.26.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureConstraints()
        configureViewModel()
    }
    func configureUI() {}
    
    func configureConstraints() {}
    
    func configureViewModel() {}
}
