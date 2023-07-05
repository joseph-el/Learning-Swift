

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


print("-------------------------------------------------------------")

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