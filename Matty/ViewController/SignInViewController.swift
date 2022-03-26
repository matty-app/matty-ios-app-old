import UIKit

class SignInViewController: UIViewController {

    @IBAction private func register(_ sender: UITapGestureRecognizer) {
        let controller = UIStoryboard.main.instantiateViewController(SignUpViewController.self)
        self.navigationController?.setViewControllers([controller], animated: true)
    }
}
