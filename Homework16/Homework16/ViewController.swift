import UIKit

class ViewController: UIViewController {
    
    let circle = UIView()
    
    @IBOutlet weak var containerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCircleView()
    }
    
    @IBAction func upButtonPressed(_ sender: UIButton) {
        guard circle.center.y - 50 - 30 >= containerView.bounds.minY else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.y -= 30
        }
    }
    
    @IBAction func downButtonPressed(_ sender: UIButton) {
        guard circle.center.y + 50 + 30 <= containerView.bounds.maxY else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.y += 30
        }
    }
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        guard circle.center.x - 50 - 30 >= containerView.bounds.minX else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.x -= 30
        }
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        guard circle.center.x + 50 + 30 <= containerView.bounds.maxX else { return }
        
        UIView.animate(withDuration: 0.3) {
            self.circle.frame.origin.x += 30
        }
    }
    
    @IBAction func ressetButtonPressed(_ sender: UIButton) {
        UIView.animate(withDuration: 2.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5) {
            self.circle.center.x = self.containerView.center.x
            self.circle.center.y = self.containerView.center.y
        }
    }
    
    func createCircleView() {
        circle.frame = CGRect(x: 150, y: 300, width: 100, height: 100)
        circle.layer.cornerRadius = circle.frame.width/2
        circle.backgroundColor = .blue
        containerView.addSubview(circle)
    }
    
}
