import UIKit

class EmailCheckViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let controller = UIStoryboard.main.instantiateViewController(InterestsViewController.self)
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
