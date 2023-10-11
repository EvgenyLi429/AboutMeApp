import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var LogoutButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        applyGradient(to: self)
        welcomeLabel.text = "Welcome \(Person.getPersonInfo().name)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let tabBarController = segue.destination as? UITabBarController else { return }
//        guard let viewControllers = tabBarController.viewControllers else { return }
//        for viewController in viewControllers {
//            viewController.view.backgroundColor = .systemGray2 //temp color
//        }
    }
}
