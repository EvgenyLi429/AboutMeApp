import UIKit

final class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = "user"
    private let password = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    /*peredai imya na welcomeview
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        <#code#>
    }
     */
    
    @IBAction func loginButton() {
        // if pressed, checks username and pass
        // if true = open welcomeview else error.alert
        guard userNameTextField.text == user && passwordTextField.text == password else {
            
        }
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            return false
        }
        return true
    }
    
    @IBAction func forgotUserName() {
        //alert username
        UIAlertAction(
            title: "Ya name is:\(user)", style: UIAlertAction.Style)
    }
    
    @IBAction func fogotPassword() {
        //alert password
        UIAlertAction(title: "Ya password is:\(password)")
    }
    
    
    
    
}

