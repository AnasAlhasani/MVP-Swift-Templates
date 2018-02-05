//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___Configurable {
    func configure(viewController: ___VARIABLE_sceneName___ViewController)
}

class ___VARIABLE_sceneName___Configurator: ___VARIABLE_sceneName___Configurable {

    //MARK: ___VARIABLE_sceneName___Configurable
    func configure(viewController: ___VARIABLE_sceneName___ViewController) {
    
        let router = ___VARIABLE_sceneName___Router(viewController: viewController)
        
        let presenter = ___VARIABLE_sceneName___Presenter(
            output: viewController,
            router: router
        )
        
        viewController.presenter = presenter

    }
}
