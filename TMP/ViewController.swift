import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }

    deinit {
        // this is not called when app is in the bacground
        print("deinit")
    }
}

