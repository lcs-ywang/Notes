import Cocoa

var str = "Hello, playground"

//Data types

//What is the UInt 8 type

// it is an unsigned integer, strong 8 bits

UInt8.max
UInt8.min

//We know in biary
//
//in a 8 bit value
//
//...the first digit counts for 2

func getBinaryRepresentation(of valueToconvert: Int ) -> String{

    //Create a variable with the value of "valueToConvert"
    //a variable can be changed once created
    var decimalValueLeftToConvert = valueToconvert

    //This createa an emplty string
    //A string is just text, like "hello"
    var binaryReperesentation = ""
    // The abstraction we will use is a loop
    //Our end condition is that the decimalValueLeftToConvert is equal to Zero
    //So long as the Condition is true, the block of code surrounded by the { } brackets will be run reapidly
    while decimalValueLeftToConvert > 0 {
        // Get the next decimal binary digit
        let nextBinaryDigit = decimalValueLeftToConvert % 2
        //Add that new digit to the binary representation
        //Swift is a SECURITY TYPED language
        //It DOES NOT automatically sovernt data types
        //So, to make the Int into s string, we need to specify this
        binaryReperesentation = String(nextBinaryDigit) + binaryReperesentation
        decimalValueLeftToConvert = decimalValueLeftToConvert / 2
}

return binaryReperesentation
}
