import UIKit
import Foundation

// Challenges

// 1. Extend UIView so that it has a bounceOut(duration:) method that uses animation to scale its size down to 0.0001 over a specified number of seconds.

extension UIView {
    func bounceOut(duration: TimeInterval) {
        UIView.animate(withDuration: duration, animations: { [unowned self] in
            self.transform = CGAffineTransform(scaleX: 0.0001, y: 0.0001)
        })
    }
}

let view = UIView()
view.bounceOut(duration: 2)




// 2. Extend Int with a times() method that runs a closure as many times as the number is high. For example, 5.times { print("Hello!") } will print “Hello” five times.

extension Int {
    func times(_ closure: () -> Void) {
        guard self > 0 else { return }
        
        for _ in 0 ..< self {
            closure()
        }
    }
}

2.times { print("Make") }




// 3. Extend Array so that it has a mutating remove(item:) method. If the item exists more than once, it should remove only the first instance it finds. Tip: you will need to add the Comparable constraint to make this work!

extension Array where Element: Comparable {
    mutating func remove(item: Element) {
        self.filter { $0 == item }.count > 1 ? self.remove(at: self.firstIndex(of: item)!) : item
    }
}

var example = [1, 3, 5, 2, 4, 8, 5, 9]
example.remove(item: 5)
