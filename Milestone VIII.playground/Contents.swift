import UIKit

// Challenges


// 1. Extend UIView so that it has a bounceOut(duration:) method that uses animation to scale its size down to 0.0001 over a specified number of seconds.
extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations: { [unowned self] in
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        })
    }
}



// 2. Extend Int with a times() method that runs a closure as many times as the number is high. E.g. 5.times { print("Hello!") } will print “Hello” five times.
extension Int {
    func times() -> (Int) -> Void {
        xcdeee
    }
}
