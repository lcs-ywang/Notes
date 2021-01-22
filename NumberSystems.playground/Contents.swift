import Cocoa

//Find the digits that represent 27 in binary
//We know this is 11011 in base of 2

//Use the remainder to get the first binary digit
//The remainder operater is %
27%2

//Find the decimal value ledt to convert
//The division operator is /
27/2

//get next binary digit
13%2
//get value left to convert
6/2

//nect digit
6%2
//value left
6/2

//next binary digit
3%2
//decimal value left
3/2

//next binary digit
1%2
//done- because the decimal value left is 0
1/2

//Enumertion
//
//An enumerationsiply lists posibilities (cases)
//The : Int ... that defines the type of the raw value associated with a case
//
//This is another example of abstraction
// - hides complexidty
//Makes the call site easier to read
// e.g.: get representation(of: 17, inBase: .Binary  )
enum NumberSystemBase: Int {
    case binary = 2
    case octal = 8
    case hexadeciml = 16
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

// The value we are converting
let value = "1011011"

//What base are we coverting from
let base = 2.0

//The exponent value at the rightmost digit
var exponent = 0.0

//the surrent sum in decimal
var decimalEquivalent = 0.0

//Iterate over each character
//From right to left
for character in value.reversed() {
    //get the current degit as a double (decimal)
    if let digit = Double(String(character)) {
        
        //Add the current sum
        decimalEquivalent += digit * pow(base, exponent)
        
        //Increment the exponent (+1)
        exponent += 1
        
    }

}

//What's the result
 decimalEquivalent
