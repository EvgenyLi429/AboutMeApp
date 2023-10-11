import UIKit

final class ProfileViewController: UIViewController {
    
    @IBOutlet var profileName: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var sectionLabel: UILabel!
    @IBOutlet var ocupationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyGradient(to: self)

        profileName.text = "\(Person.getPersonInfo().name) \(Person.getPersonInfo().surname)"
        nameLabel.text = "name: \(Person.getPersonInfo().name)"
        surnameLabel.text = "surname: \(Person.getPersonInfo().surname)"
        companyLabel.text = "company: \(Person.getPersonInfo().company)"
        sectionLabel.text = "section: \(Person.getPersonInfo().secction) 😌"
        ocupationLabel.text = "occupation: \(Person.getPersonInfo().occupation) 😇"
    }
    
    
    
    
}
