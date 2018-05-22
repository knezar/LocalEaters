//
////  Created by C4Q on 1/10/18.
////  Copyright © 2018 C4Q . All rights reserved.
////
//
//import UIKit
//
//class ListTableViewCell: UITableViewCell {
//    
////    lazy var favoriteImageView: UIImageView = {
////        let imageView = UIImageView() //frame: UIScreen.main.bounds
////        imageView.contentMode = .scaleToFill
////        imageView.setContentHuggingPriority(.defaultLow, for: .horizontal)
////        imageView.setContentHuggingPriority(.defaultLow, for: .vertical)
////        imageView.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
////        imageView.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
////        return imageView
////    }()
//    lazy var nameLabel: UILabel = {
//        let label = UILabel()
//        label.textAlignment = .center
//        label.backgroundColor = .white
//        return label
//    }()
//    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//        commonInit()
//    }
//    
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        commonInit()
//    }
//    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        commonInit()
//    }
//    
//    func commonInit() {
//        addSubview(nameLabel)
//        subViewConstraints()
//    }
//    
//    private func subViewConstraints() {
////        favoriteImageView.translatesAutoresizingMaskIntoConstraints = false
////        favoriteImageView.heightAnchor.constraint(equalTo: heightAnchor).isActive = true
////        favoriteImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.25) .isActive = true
//////        favoriteImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
////        favoriteImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0)
////        favoriteImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
//        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        nameLabel.widthAnchor.constraint(equalTo: widthAnchor).isActive = true
//        nameLabel.heightAnchor.constraint(equalTo: widthAnchor).isActive = true
//    }
//}
//
