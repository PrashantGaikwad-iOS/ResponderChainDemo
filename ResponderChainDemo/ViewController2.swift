//
//  ViewController2.swift
//  ResponderChainDemo
//
//  Created by Prashant Gaikwad on 21/01/22.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        layout()
    }
    
    func layout() {
        let myFirstButton = UIButton()
        myFirstButton.setTitle("fetch details", for: .normal)
        myFirstButton.setTitleColor(.blue, for: .normal)
        myFirstButton.frame = CGRect(x: 15, y: -50, width: 300, height: 500)
        myFirstButton.addTarget(nil, action: #selector(ResponderAction.fetchDetails), for: .primaryActionTriggered)
        
        view.addSubview(myFirstButton)
    }
    
    @IBAction func btnAction(_ sender: Any) {
        UIApplication.shared.sendAction(#selector(ResponderAction.fetchDetails),
                                        to: nil,
                                        from: self,
                                        for: nil)
    }
    
    
    
}

extension ViewController2: ResponderAction {
    func fetchDetails(sender: Any?) {
        debugPrint("inside VC2")
    }
}

@objc protocol ResponderAction: AnyObject {
    func fetchDetails(sender: Any?)
}
