// Terminology

/*

Operators are unary, binary, or ternary:

Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!).

Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.

Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).

The values that operators affect are operands. In the expression 1 + 2, the + symbol is an infix operator and its two operands are the values 1 and 2.

*/

let b = 10
var a = 5
a = b

let (x, y) = (1, 2)

if x == y {
    // This isn't valid, because x = y doesn't return a value.
}


// Arithmetic Operators
/*
Swift supports the four standard arithmetic operators for all number types:

Addition (+)

Subtraction (-)

Multiplication (*)

Division (/)
*/

// 1 + 2       // equals 3
// 5 - 3       // equals 2
// 2 * 3       // equals 6
// 10.0 / 2.5  // equals 4.0
// "hello, " + "world"  // equals "hello, world"

// Remainder Operator

/*
Note

The remainder operator (%) is also known as a modulo operator in other languages. However, its behavior in Swift for negative numbers means that, strictly speaking, it’s a remainder rather than a modulo operation.

Here’s how the remainder operator works. To calculate 9 % 4, you first work out how many 4s will fit inside 9:

You can fit two 4s inside 9, and the remainder is 1 (shown in orange).

In Swift, this would be written as:

9 % 4    // equals 1
*/



// Unary Minus Operator && Unary Plus Operator
/*

The sign of a numeric value can be toggled using a prefixed -, known as the unary minus operator:

let three = 3
let minusThree = -three       // minusThree equals -3
let plusThree = -minusThree   // plusThree equals 3, or "minus minus three"
The unary minus operator (-) is prepended directly before the value it operates on, without any white space.

The unary plus operator (+) simply returns the value it operates on, without any change:

let minusSix = -6
let alsoMinusSix = +minusSix  // alsoMinusSix equals -6
Although the unary plus operator doesn’t actually do anything, you can use it to provide symmetry in your code for positive numbers when also using the unary minus operator for negative numbers.

*/


// Comparison Operators

// (1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" aren't compared
// (3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
// (4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

// ("blue", -1) < ("purple", 1)        // OK, evaluates to true
// ("blue", false) < ("purple", true)  // Error because < can't compare Boolean values

// Ternary Conditional Operator

let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight is equal to 90

// Nil-Coalescing Operator

var color:String? = nil
var red:String? = "RED"
var gameColor: String = red ?? color!


var ab:Int? = nil
var sb:Int? = 42

print("check color should be red >>>> \(gameColor)")


// Range Operators

for index: Int in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}


let names: [String] = ["Anna", "Alex", "Brian", "Jack"]
let count: Int = names.count
for i: Int in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}


for i: String in names[1...] { //One-Sided Ranges
    print("check >", i)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}

print("-______________________________")

let range: PartialRangeThrough<Int> = ...10

print("Range > ", range.contains(4))
range.contains(7)   // true
range.contains(4)   // true
range.contains(-1)  // true
