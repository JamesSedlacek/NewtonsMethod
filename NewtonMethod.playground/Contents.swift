import UIKit

// This is needed for rounding
extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}

// Set the starting X variable
// Set the rounding
var x: Double = 1.6
let roundToThe =  6

// This is the formula for Newton's Method
func newtonMethod(x: Double) -> Double {

    // Set the f(x)
    // Set the Derivative of f(x)
    let fOfX = 5 * sin(x) + (2 * x) + 3
    let derivative = 2 + 5 * cos(x)

    return x - (fOfX / derivative)
}

// Loop from one to ten
for i in 1...10 {
    
    // Set the answer equal to Newton's Method using X and rounding to the nth place
    let answer = newtonMethod(x: x).rounded(toPlaces: roundToThe)
    
    // Display the answer in the Console below
    print("\(i): \(answer)")
    
    // Set X equal to the answer
    x = answer
}

// <-- press the blue play button
// The answers will be in the Console Below
