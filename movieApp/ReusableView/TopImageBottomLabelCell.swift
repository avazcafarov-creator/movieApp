//
//  MovieCell.swift
//  movieApp
//
//  Created by Avaz Cafarov on 20.09.26.
//

import UIKit

protocol TopImageBottomLabelProtocol {
    var imagePath: String { get }
    var labelText: String { get }
}

class TopImageBottomLabelCell: UICollectionViewCell {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var topImage: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 16
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    static let identifier = "TopImageBottomLabelCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureConstraints() {
        addSubview(titleLabel)
        addSubview(topImage)
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            topImage.topAnchor.constraint(equalTo: topAnchor),
            topImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            topImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            topImage.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -8)
        ])
    }

//    func configure(data: MovieResult) {
//        titleLabel.text = data.originalTitle
//        topImage.loadImage(data: data.posterPath ?? "")
//    }

    func configure(data: TopImageBottomLabelProtocol) {
        titleLabel.text = data.labelText
        topImage.loadImage(data: data.imagePath)
    }
}
