import Cocoa
import Foundation
    
func decimalequivalent(value:String, base:Double){
    var exponent = 0.0
    var decimalEquivalent = 0.0
    
    for character in value.reversed() {
        switch character{
        case "A":
            decimalEquivalent += 10 * pow(base, exponent)
        case "B":
            decimalEquivalent += 11 * pow(base, exponent)
        case "C":
            decimalEquivalent += 12 * pow(base, exponent)
        case "D":
            decimalEquivalent += 13 * pow(base, exponent)
        case "E":
            decimalEquivalent += 14 * pow(base, exponent)
        case "F":
            decimalEquivalent += 15 * pow(base, exponent)
        case "G":
            decimalEquivalent += 16 * pow(base, exponent)
        default:
            let digit = Double(String(character))!
            decimalEquivalent += digit * pow(base, exponent)
        }
        exponent += 1
    }
    print(decimalEquivalent)
}
    

//What's the result

decimalequivalent(value:"9AC", base:16)

