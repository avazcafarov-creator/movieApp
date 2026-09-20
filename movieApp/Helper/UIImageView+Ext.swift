//
//  UIImageView+Ext.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import UIKit
import Kingfisher

extension UIImageView {
    func loadImage(data: String) {
        let url = URL(string: CoreHelper.shared.configureImageURL(path: data))
        kf.setImage(with: url)
    }
}

