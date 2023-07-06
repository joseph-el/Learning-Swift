

let someString = "Some string literal value"


// Multiline String Literals

// If you need a string that spans several lines, use a multiline string literal — a sequence of characters surrounded by three double quotation marks:

let quotation: String = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""

let singleLineString: String = "These are the same."
let multilineString: String = """
These are the same.
"""

// When your source code includes a line break inside of a multiline string literal, that line break also appears in the string’s value. If you want to use line breaks to make your source code easier to read, but you don’t want the line breaks to be part of the string’s value, write a backslash (\) at the end of those lines:

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

// https://docs.swift.org/swift-book/images/multilineStringWhitespace~dark@2x.png // Png to explain
// To make a multiline string literal that begins or ends with a line feed, write a blank line as the first or last line. For example:

let lineBreaks: String = """

This string starts with a line break.
It also ends with a line break.

"""


// Special Characters in String Literals
/*
String literals can include the following special characters:

The escaped special characters \0 (null character), \\ (backslash), \t (horizontal tab), \n (line feed), \r (carriage return), \" (double quotation mark) and \' (single quotation mark)

An arbitrary Unicode scalar value, written as \u{n}, where n is a 1–8 digit hexadecimal number (Unicode is discussed in Unicode below)

The code below shows four examples of these special characters. The wiseWords constant contains two escaped double quotation marks. The dollarSign, blackHeart, and sparklingHeart constants demonstrate the Unicode scalar format:
*/

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign: String = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart: String = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart: String = "\u{1F496}" // 💖, Unicode scalar U+1F496

let threeMoreDoubleQuotationMarks = #"""
Here are three more \#n double quotes: """
"""#

print("check > ", threeMoreDoubleQuotationMarks)


// for character: Character in "Game Starting ! 👾" {
//     print("this Character Is > ", character)
    
// }

// let message = #"""
//     This is a multi-line string
//         that preserves leading and trailing whitespace.
//     """#
// print(message)

// var Str:String = |"HELLOWORLD"|

// print(Str)


// Working with Characters

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"

// String Interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"

print(#"Write an interpolated string in Swift using \(multiplier)."#)
// Prints "Write an interpolated string in Swift using \(multiplier)."


var pipe:String = "-------------------------------------------------------------"
print(pipe)

var _string:String = "HELLO JOSEPH !"
print("all is > \(_string.count)")


/*
Note that Swift’s use of extended grapheme clusters for Character values means that string concatenation and modification may not always affect a string’s character count.

For example, if you initialize a new string with the four-character word cafe, and then append a COMBINING ACUTE ACCENT (U+0301) to the end of the string, the resulting string will still have a character count of 4, with a fourth character of é, not e:

*/
var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"
word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in café is 4"

// --- Accessing and Modifying a String ---

// -| String Indices |- //
let greeting: String = "Guten Tag!"
var ty: Character = greeting[greeting.startIndex]
var ly: Character = greeting[greeting.index(before: greeting.endIndex)]
var sy: Character = greeting[greeting.index(after: greeting.startIndex)]
let index: String.Index = greeting.index(greeting.startIndex, offsetBy: 7)
var ind: Character = greeting[index]
print(pipe)
print(ty)
print(ly)
print(sy)
print(ind)
print(pipe)
var ret: String = "HY JOSEPH ! 👋🏻"
print("first index > \(ret.startIndex)")
// print("C > ",  ret[ret.index(after: String.Index)]  )s
print("C > ", ret[ret.index(after: ret.startIndex)])
var indp :String.Index = ret.endIndex

print("here the last chara > \(ret[ret.index(before: indp)])")
print(pipe)

do {
    let lp : Character = ret [ret.index(ret.startIndex, offsetBy: 7)]  
    print("check Character > |\(lp)|")
}
catch {
    print("ERROR !")
    
}
print(pipe)
// Using loops

var elem: DefaultIndices<String> = ret.indices

for inddex: DefaultIndices<String>.Element in ret.indices {
    print("", ret[inddex], terminator: "-")
}

// Inserting and Removing

print(pipe);print("")
print(pipe);print("")


var wel: String = "hello"
wel.insert(contentsOf: "HALA", at: wel.endIndex)

print("str > ", wel)

print(pipe)

var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)


welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range: Range<String.Index> = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)

print(pipe)
print(pipe)
print(pipe)

var tyu: String = "!U😺Cat"

for unicode_: String.UTF8View.Element in tyu.utf8 {
    print(" ", unicode_ , terminator: " ")
}
print("")

for uni: UInt16 in tyu.utf16 {
    print(" ", uni, terminator: " ")
}





