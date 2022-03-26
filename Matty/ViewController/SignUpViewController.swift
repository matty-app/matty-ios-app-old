import UIKit

class SignUpViewController: UIViewController {

    @IBAction private func register() {
        let controller = UIStoryboard.main.instantiateViewController(EmailCheckViewController.self)
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
    @IBAction func login(_ sender: UITapGestureRecognizer) {
        let controller = UIStoryboard.main.instantiateViewController(SignInViewController.self)
        self.navigationController?.setViewControllers([controller], animated: true)
    }
}

extension UIStoryboard {
    
    static let main: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    
    func instantiateViewController(_ viewController: UIViewController.Type) -> UIViewController {
        return instantiateViewController(withIdentifier: String(describing: viewController))
    }
}
