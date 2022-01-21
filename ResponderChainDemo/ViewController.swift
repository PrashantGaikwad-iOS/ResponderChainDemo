//
//  ViewController.swift
//  ResponderChainDemo
//
//  Created by Prashant Gaikwad on 21/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: ResponderAction {
    func fetchDetails(sender: Any?) {
        debugPrint("inside VC")
    }
}
