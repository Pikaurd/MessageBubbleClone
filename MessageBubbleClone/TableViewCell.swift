//
//  TableViewCell.swift
//  MessageBubbleClone
//
//  Created by Pikaurd on 22/11/2016.
//  Copyright © 2016 Pikaurd. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    let screenBounds = UIScreen.main.bounds
    
    let cellFrame = CGRect(origin: .zero, size: CGSize(width: screenBounds.width, height: 44))
    
    let maskLayer = CAShapeLayer()
    let rect = CGRect(origin: CGPoint(x: 10, y:3), size: CGSize(width: 200, height: 36))
    let path = CGPath(roundedRect: rect, cornerWidth: 18, cornerHeight: 18, transform: nil)
    
    let mpath = path.mutableCopy()!
    mpath.addRect(cellFrame)
    
    maskLayer.path = mpath
    maskLayer.fillRule = kCAFillRuleEvenOdd
    
    backgroundColor = .clear
    
    let upperView = UIView(frame: cellFrame)
    upperView.backgroundColor = .white
    upperView.layer.mask = maskLayer
    contentView.addSubview(upperView)
    
  }
  
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
    // Configure the view for the selected state
  }
  
}
