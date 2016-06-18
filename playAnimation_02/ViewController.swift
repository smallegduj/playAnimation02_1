import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var arrow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func play(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: {
            self.arrow.center.x += 200
            }, completion: { _ in
                UIView.animateWithDuration(1, animations: {
                    self.arrow.center.y += 100
                    }, completion: { _ in
                        UIView.animateWithDuration(1, animations: {
                            self.arrow.center.x -= 200
                            }, completion: { _ in
                                UIView.animateWithDuration(1, animations: {
                                    self.arrow.center.y -= 100
                                    }, completion: nil)
                        })
                })
        })
    }
    
}
