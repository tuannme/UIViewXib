//
//  Emoticon.swift
//  Apple
//
//  Created by Nguyen Manh Tuan on 10/10/17.
//  Copyright © 2017 Nguyen Manh Tuan. All rights reserved.
//

import UIKit

@IBDesignable class Emoticon: UIView {

    @IBOutlet weak var picture: UIImageView!
    
    @IBInspectable var image: UIImage? {
        get {
            return picture.image
        }
        set(image) {
            picture.image = image
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // MARK: - Private Helper Methods
    
    // Performs the initial setup.
    fileprivate func setupView() {
        let view = viewFromNibForClass()
        view.frame = bounds
        view.autoresizingMask = [
            UIViewAutoresizing.flexibleWidth,
            UIViewAutoresizing.flexibleHeight
        ]
        addSubview(view)
    }
    
    // Loads a XIB file into a view and returns this view.
    fileprivate func viewFromNibForClass() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    
}
