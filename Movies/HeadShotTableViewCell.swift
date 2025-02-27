//
//  HeadShotTableViewCell.swift
//  Movies
//
//  Created by Mathias Quintero on 10/17/15.
//  Copyright © 2015 LS1 TUM. All rights reserved.
//

import UIKit

class HeadShotTableViewCell: UITableViewCell {
    
    var person: Actor? {
        didSet {
            if let personUnwrapped = person {
                nameLabel.text = personUnwrapped.name
                if let imageOfHeadshot = personUnwrapped.headshot {
                    headShotView.image = imageOfHeadshot
                } else {
                    headShotView.image = UIImage(named: "avatar")
                }
            }
        }
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var headShotView: UIImageView! {
        didSet {
            headShotView.layer.cornerRadius = CGFloat (headShotView.frame.width / 2)
            headShotView.clipsToBounds = true
            headShotView.layer.frame = headShotView.layer.frame.insetBy(dx: 20, dy: 20)
            headShotView.layer.borderColor = Constants.tintColor.cgColor
            headShotView.layer.borderWidth = 2.0
        }
    }
    
}
