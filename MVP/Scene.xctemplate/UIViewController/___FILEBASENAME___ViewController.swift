//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    // MARK: Outlets
    
    // MARK: Injections
    var presenter: ___VARIABLE_sceneName___PresenterInput!
    var configurator: ___VARIABLE_sceneName___Configurable!

    // MARK: View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(viewController: self)
        presenter.viewDidLoad()
        
    }

}

// MARK: - ___VARIABLE_sceneName___PresenterOutput
extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___PresenterOutput {

}
