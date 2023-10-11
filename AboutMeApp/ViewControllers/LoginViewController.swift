import UIKit

final class LoginViewController: UIViewController {
    
    //MARK: IBOutlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "user"
    private let password = "password"
    
    //MARK: ACTION
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeView = segue.destination as? WelcomeViewController else { return }
        welcomeView.user = user
    }
    
    //MARK: LOGINBUTTON
    @IBAction func loginButtonPressed() {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                title: "Error",
                message: "Invalid username or password",
                textField: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "WelcomeViewController", sender: nil)
    }
    
    //MARK: FORGOT USER & PASS
    @IBAction func forgotData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Forgot username?", message: "Your name is: 'user'")
        : showAlert(title: "Forgot password?", message: "Your pass is: 'password'")
    }
    
    //MARK: UNWIND and RESET
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    //MARK: PRIVATE METHODS, ALERTS
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
