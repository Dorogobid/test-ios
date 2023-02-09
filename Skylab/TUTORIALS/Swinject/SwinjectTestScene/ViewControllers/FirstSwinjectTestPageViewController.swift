//
//  FirstSwinjectTestPageViewController.swift
//  Skylab
//
//  Created by Serhii Dorohobid on 27.01.2023.
//

import UIKit

class FirstSwinjectTestPageViewController: BaseViewController, Storyboarded {
    
    var viewModel: FirstSwinjectTestPageViewModel?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func openFirstSubcontroller(_ sender: Any) {
        viewModel?.logger.Log(logLevel: .debug, message: "openFirstSubcontroller() called")
        viewModel?.openFirstSubcontroller()
    }

    @IBAction func openSecondSubcontroller(_ sender: Any) {
        viewModel?.openSecondSubcontroller()
    }

}
