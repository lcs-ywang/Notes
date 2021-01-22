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
    




// Get the alternate representation of a value in a different base
func getRepresentation(of valueToConvert: Int, inBase base: NumberSystemBase) -> String {
    

    // Create a variable with the value of "valueToConvert"
    // A variable CAN be changed once created
    var decimalValueLeftToConvert = valueToConvert
    // This creates an empty string
    // A string is just text, like "hello"
    var representation = ""

    // The abstraction we will use is a LOOP
    // Our END CONDITION is that the decimalValueLeftToConvert is equal to zero
    // So long as the CONDITION is true, the block of code surrounded by the {  } brackets will be run repeatedly
    while decimalValueLeftToConvert > 0 {
        

        // Get the next digit
        let nextDigit = decimalValueLeftToConvert % base.rawValue
        

        // Add that new digit to the representation
        // Swift is a STRICTLY TYPED language
        // It DOES NOT automatically convert data types
        // So, to make the Int into a String, we need to specify this
        //
        //If statement
        //
        //check a condition - when true, do one thing
        //                  - when false, do something else
        if base == .hexadeciml {
            // we know the base is hexadecimal (condition was TRUE)
            
            //Carefully set the next digit
            // when something other use the ABCEF
            //
            //Switch statement evaluates some value
            //
            //And take different actions depend on the value
        
            switch nextDigit {
            case 0...9:
                representation = String(nextDigit) + representation
            case 10:
                representation = "A" + representation
            case 11:
                representation = "B" + representation
            case 12:
                representation = "C" + representation
            case 13:
                representation = "D" + representation
            case 14:
                representation = "E" + representation
            case 15:
                representation = "F" + representation
            default:
                break
            }
        } else {
            representation = String(nextDigit) + representation
        }
            // Get the decimal value left to convert
        decimalValueLeftToConvert = decimalValueLeftToConvert / base.rawValue

    }
    

    return representation
    

}

// Call, or use the function
getRepresentation(of: 17, inBase: .binary)
getRepresentation(of: 17, inBase: .octal)
getRepresentation(of: 17, inBase: .hexadeciml)
//
getRepresentation(of: 28, inBase: .hexadeciml)

