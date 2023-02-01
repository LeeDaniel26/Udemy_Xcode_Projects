import UIKit

struct Calculator {
    let n: Int

    var check: String {
        switch n {
        case 1:
            return "This is 1."
        case 2:
            return "This is 2."
        default:
            return "Type something..."
        }
    }
}

let calculator = Calculator(n: 2)

print(calculator.check)    // Output:
