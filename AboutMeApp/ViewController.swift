import UIKit

final class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "user"
    private let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    @IBAction func loginButton() {
        if userNameTextField.text == user && passwordTextField.text == password {
            performSegue(withIdentifier: "WelcomeViewController", sender: self)
        } else {
            let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            return false
        }
        return true
    }
    
    @IBAction func forgotUserName() {
        let alert = UIAlertController(title: "Forgot Username?", message: "Your username is \(user)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func fogotPassword() {
        let alert = UIAlertController(title: "Forgot Password?", message: "Your password is \(password)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            present(alert, animated: true, completion: nil)

    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        
    }
    
    
    
}

