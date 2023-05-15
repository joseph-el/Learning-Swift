import SwiftUI

var key:String? = "HELLO"

var Np:size_t? = nil

if Np == nil {
    print("Now Np is Null")
} else {
    print("Now is valide")
}

Np = 23

if Np == nil {
    print("Now Np is Null")
} else {
    print("Now is valide")
}


let Ret: (String, Float, Int, size_t) = ("hello", 2.4, 44, 2)

Ret.0 = "HELLO"

if (key != nil) {
    write(STDOUT_FILENO, "STR", 3)
}
else {
    write(2, "ERROR", 5)
}



// var K:Int? = nil
// if K != nil {
//     print(K!)
// }
// else {
//     print("HELLO")
    
// }
