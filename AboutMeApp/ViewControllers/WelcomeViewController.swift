import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var LogoutButton: UIButton!
    @IBOutlet var welcomeLabel: UILabel!
    
    var user = ""
    
    //🍎Posmotri mozno li vinesti gradient v otdelni fail
    private let primaryColor = UIColor(
    red:210/255,
    green:109/255,
    blue:128/255,
    alpha:1
    )
    
    private let secondaryColor = UIColor(
    red:107/255,
    green:148/255,
    blue:230/255,
    alpha:1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(
            topColor: primaryColor,
            bottomColor: secondaryColor
        )
        welcomeLabel.text = "Welcome, \(user)"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        for viewController in viewControllers {
            viewController.view.backgroundColor = .systemGray2 //temp color
        }
    }
}

//MARK: BACKGROUNDCOLOR
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
