import SwiftUI

// var http: (Int, String, Float) = (404, "Error Service port", 33.2)
// var http: (Int, String) = (404, "Error Service port")



var Error_S: (Int, String, Bool) = (303, "Error at port", true)

let (A , B, C) = Error_S // acess the tuple grp method 1

print("check Error code = \(A) , Error details : \(B), status : \(C)")


// acess Tuple by another method

print("Error code \(Error_S.0) Error code \(Error_S.1) status \(Error_S.2)")

Error_S.0 = 404

print("Error code \(Error_S.0) Error code \(Error_S.1) status \(Error_S.2)")


print("check Self ==> \(Error_S)") // .slef calls the group of tuple 

// i can name the individual elements in a tuple when the tuple is defined


var KOK: (status: Int, error: String, tmp: Bool) = (status: 203, error: "Port Error", tmp: false)

var ptr: UnsafeBufferPointer<Int> = Error_S.0

write(1, "HELLO", 5)





// print("try http \(http) --- ")

