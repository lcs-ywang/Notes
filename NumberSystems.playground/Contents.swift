import Cocoa

var str = "Hello, playground"

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


//Creates a constant with the value 0f 76
//A sonstant cannot be changed once started
let valueToConvert = 76
//create a variable with the value of "valueToConvert"
var decimalValueLeftToConvert = valueToConvert
//this createa an emplty string
//A string is just text, like "hello"
var binaryReperesentation = ""

// the abstraction we will use is a loop
//our end condition is that the decimalValueLeftToConvert is equal to Zero
//So long as the Condition is true, the block of code surrounded by the { } brackets will be run reapidly
while decimalValueLeftToConvert > 0 {

// get the next decimal binary digit
let nextBinaryDigit = decimalValueLeftToConvert % 2
    //
}
