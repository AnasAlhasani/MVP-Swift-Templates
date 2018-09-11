# MVP-Swift-Templates
__MVP (Model View Presenter)__ generator which consists of:
* `View` 

```swift
class LoginViewController: UIViewController {
    
    // MARK: Outlets
    
    // MARK: Injections
    var presenter: LoginPresenterInput!
    var configurator: LoginConfigurable!

    // MARK: View lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator = LoginConfigurator()
        configurator.configure(viewController: self)
        presenter.viewDidLoad()
        
    }

}

// MARK: - LoginPresenterOutput
extension LoginViewController: LoginPresenterOutput {

}
```

* `Presenter`
```swift
protocol LoginPresenterInput: BasePresenterInput {
    
    var router: LoginRoutable { get }
    
}

protocol LoginPresenterOutput: BasePresenterOutput {
    
}

class LoginPresenter {
    
    //MARK: Injections
    private weak var output: LoginPresenterOutput?
    var router: LoginRoutable
    
    //MARK: LifeCycle 
    init(output: LoginPresenterOutput,
         router: LoginRoutable) {
        
        self.output = output
        self.router = router
    }
    
}

// MARK: - LoginPresenterInput
extension LoginPresenter: LoginPresenterInput {
    
    func viewDidLoad() {
        
    }
    
}
```

* `Configurator`
```swift
protocol LoginConfigurable {
    func configure(viewController: LoginViewController)
}

class LoginConfigurator: LoginConfigurable {

    //MARK: LoginConfigurable
    func configure(viewController: LoginViewController) {
    
        let router = LoginRouter(viewController: viewController)
        
        let presenter = LoginPresenter(
            output: viewController,
            router: router
        )
        
        viewController.presenter = presenter

    }
}
```

* `Router`
```swift
protocol LoginRoutable: ViewRoutable {
    
}

class LoginRouter {
    
    // MARK: Injections
    weak var viewController: UIViewController?
    
    // MARK: LifeCycle
    required init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
}

// MARK: - LoginRoutable
extension LoginRouter: LoginRoutable {
    
}
```

# Installation

To install MVP Swift Xcode templates, run:
```
make install
```
To uninstall MVP Swift Xcode templates, run:
```
make uninstall
```
