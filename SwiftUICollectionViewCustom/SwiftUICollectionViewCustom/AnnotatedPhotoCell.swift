//
//  AnnotatedPhotoCell.swift
//  SwiftUICollectionViewCustom
//
//  Created by Javier on 31/8/15.
//  Copyright (c) 2015 Javier. All rights reserved.
//

import UIKit

class AnnotatedPhotoCell: UICollectionViewCell {
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var imageViewHeightLayoutConstraint: NSLayoutConstraint!
    @IBOutlet private weak var captionLabel: UILabel!
    @IBOutlet private weak var commentLabel: UILabel!
    
    var photo: Photo? {
        didSet {
            if let photo = photo {
                imageView.image = photo.image
                captionLabel.text = photo.caption
                commentLabel.text = photo.comment
            }
        }
    }
    
    override func applyLayoutAttributes(layoutAttributes: UICollectionViewLayoutAttributes!) {
        super.applyLayoutAttributes(layoutAttributes)
        if let attributes = layoutAttributes as? PinterestLayoutAttributes {
            imageViewHeightLayoutConstraint.constant = attributes.photoHeight
        }
    }
}
