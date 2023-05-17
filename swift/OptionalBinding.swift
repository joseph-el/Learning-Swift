
import SwiftUI

var str:String? = nil

if let _: String = str {
    write(STDOUT_FILENO, "OK", 2)
}

var ret: Int? = 2

if let _:Int = ret {
    write(STDOUT_FILENO, "KO", 2)
    print("HELLO \(ret!)")
    
}