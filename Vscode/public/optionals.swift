
var errorcode:Int? = 502 // 502 as value
errorcode = nil // no value
var str:String? // auto set to null

// If Statements and Forced Unwrapping
// You can use an if statement to find out whether an optional

if errorcode != nil{
    print("here some value")
}else {
    print("NULL")
}

//------------------------------------------------------------
var name:String = "2003"
var to_int:Int? = Int(name)

/*  
        ### optional binding

    You use optional binding to find out whether an 
    optional contains a value, and if so, to make that
    value available as a temporary constant or variable.
    Optional binding can be used with if and while statements
    to check for a value inside an optional, and to extract that
    value into a constant or variable, as part of a single action.
    if and while statements are described in more detail in Control Flow.

    if let <#constantName#> = <#someOptional#> {
    <#statements#>
    }
*/

var _var:Int? = -42

if let constantName: Int = _var {
    print("valide key \(constantName)")
}
else {
    print("NULL")
}

//------------------------------------------------------------

if let checkobject:Int = Int("O123") {
    print("yes valid >", checkobject)
} else {
    print("Not valide !")
}

/*
You can use both constants and variables with optional binding.
If you wanted to manipulate the value of myNumber within the first branch of the if statement,
you could write if var myNumber instead, and the value contained within
the optional would be made available as a variable rather than a constant.
Changes you make to myNumber inside the body of the if statement apply only
to that local variable, not to the original, optional constant or variable that you unwrapped.
You can include as many optional bindings and Boolean conditions in a single
if statement as you need to, separated by commas. If any of the values in the
optional bindings are nil or any Boolean condition evaluates to false, the whole
if statement’s condition is considered to be false. The following if statements are equivalent:
*/

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
    print("\(firstNumber) < \(secondNumber) < 100")
}

var nbr:Int? = Int(String("HELOO")) 
var UP:Bool = true
var DOWN:Bool = false
var LEFT:Bool = true
var RIGHT:Bool = false

if UP && !RIGHT, LEFT || DOWN {
    print("H")
} else {
    print("G")
}


var s:String? = "HE"
s = nil
var t:String = s!


//  print("check opt >", s?.uppercased())
//  Implicitly Unwrapped Optionals



