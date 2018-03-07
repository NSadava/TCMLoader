//
//  TCMLoader.swift
//  TCMLoader
//
//  Created by TACME on 3/6/18.
//  Copyright © 2018 TACME. All rights reserved.
//

import UIKit

public class TCMLoader: UIView {

    let nibName = "TCMLoader"
    var contentView: UIView!
    var timer: Timer?
    
    @IBOutlet private weak var lblLoading: UILabel!
    
    public convenience init() {
        self.init(frame: (UIApplication.shared.keyWindow?.rootViewController?.view.bounds)!)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpView()
    }
    
    private func setUpView() {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(self.contentView)
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        
        lblLoading.text = ""
        
    }
    
    @objc public func showLoading() {
        self.showLoading(withText: "Loading...")
    }
    @objc public func showLoading(withText: String?) {
        if((withText) != nil) {
            self.lblLoading.text = withText
        }
        self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
        UIApplication.shared.keyWindow?.rootViewController?.view.addSubview(self)
        UIView.animate(withDuration: 0.2, animations: {
            self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }) { (success) in
            UIView.animate(withDuration: 0.2, animations: {
                self.transform = CGAffineTransform.identity
            }, completion: { (success) in
                
            })
        }
    }
    @objc public func hideLoading() {
        
        UIView.animate(withDuration: 0.2, animations: {
            self.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        }) { (success) in
            UIView.animate(withDuration: 0.2, animations: {
                self.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }, completion: { (success) in
                self.removeFromSuperview()
            })
        }
    }
    
    
    public override func layoutSubviews() {
        self.layoutIfNeeded()
        self.contentView.layer.cornerRadius = 10
        self.contentView.layer.masksToBounds = true
    }
    /*public override func didMoveToSuperview() {
        self.timer = Timer.scheduledTimer(timeInterval: TimeInterval(3.0), target: self, selector: #selector(self.removeSelf), userInfo: nil, repeats: false)
    }
    @objc private func removeSelf() {
        self.removeFromSuperview()
    }*/
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
