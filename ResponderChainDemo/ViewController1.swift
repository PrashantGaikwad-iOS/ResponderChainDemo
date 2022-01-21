//
//  ViewController1.swift
//  ResponderChainDemo
//
//  Created by Prashant Gaikwad on 21/01/22.
//

import UIKit

class ViewController1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension ViewController1: ResponderAction {
    func fetchDetails(sender: Any?) {
        debugPrint("inside VC1")
    }
}
