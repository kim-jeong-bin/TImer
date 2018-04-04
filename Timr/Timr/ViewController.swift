
import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    var myTimer = Timer()
    var check = true
    var checked = true
    
    @IBOutlet weak var imageCounter: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageCounter.text = String(counter)
    }
    
    @IBAction func play(_ sender: Any) {
        if checked == true {
            
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
            checked = false
            
        } else if checked == false{
            myTimer.invalidate()
            checked = true
        }
        
    }
    
    
    
    @objc func doAnimation() {
        if counter == 5 {
            check = false
        } else if counter == 1 {
            check = true
        }
        if check == true {
            counter = counter + 1
        } else {
            counter = counter - 1
        }
        
        myImageView.image = UIImage(named: "frame\(counter).png")
        imageCounter.text = String(counter)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
    }
}
