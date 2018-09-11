//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneName___PresenterInput: BasePresenterInput {
    
    var router: ___VARIABLE_sceneName___Routable { get }
    
}

protocol ___VARIABLE_sceneName___PresenterOutput: BasePresenterOutput {
    
}

class ___VARIABLE_sceneName___Presenter {
    
    //MARK: Injections
    private weak var output: ___VARIABLE_sceneName___PresenterOutput?
    var router: ___VARIABLE_sceneName___Routable
    
    //MARK: LifeCycle 
    init(output: ___VARIABLE_sceneName___PresenterOutput,
         router: ___VARIABLE_sceneName___Routable) {
        
        self.output = output
        self.router = router
    }
    
}

// MARK: - ___VARIABLE_sceneName___PresenterInput
extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterInput {
    
    func viewDidLoad() {
        
    }
    
}

