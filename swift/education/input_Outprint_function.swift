
import SwiftUI

var STR:String = "HELLO"

print("HELLI", "JOSEPh", "JUSU", "DEXTER",separator: ". ", terminator: "\n")

print("Set Ur name : ")

let name:String = readLine()!

name.isEmpty ? print("Error") : print("USE it")

print("Ur name by input is", "\(name)", separator: ". ")

func testFunction() {
	let someValue:Int? = nil
	guard let temp: Int = someValue else {
        print("Has a nil")
		return
	}
	print("It has some value \(temp)")
}
testFunction()