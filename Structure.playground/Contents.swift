import Cocoa

var str = "Hello, playground"

struct Person {

    
    // MARK: Properties
    var name: String
    var hairColour: String
    var age: Int
    var heightCentimeter: Double
    var massInKilograms: Double
//
//MARK: Computer properties
    var heightMeter: Double {
        return heightCentimeter / 100
    }
    var BodyMassiveIndex: Double {
        return massInKilograms / (heightMeter * heightMeter)
    }
    // MARK: Function
    // Say hi
    // A Function
    //Use function over a computer propertie when we need some info to do that job
    //In this case, the info we need is the intro
    func sayHello(with intro: String){
        print (intro + name )
    }
}

let me = Person(name: "Luck",
                hairColour: "Black",
                age: 16,
                heightCentimeter: 171,
                massInKilograms: 70)

let you = Person(name: "Gordon",
                 hairColour: "Red",
                 age: 43,
                 heightCentimeter: 180,
                 massInKilograms: 80)

//It's my birthday
me.heightCentimeter

me.heightMeter

me.BodyMassiveIndex

//say hello in a few different ways
me.sayHello(with: "Hi, my name is")
me.sayHello(with: "Hey, how are you, I'm")
