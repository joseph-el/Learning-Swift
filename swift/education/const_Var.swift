import SwiftUI

let str: String = "Const string LOL"
let int_: Int = 2003



/*
    i cant edit the str or int_ because its a const Variable by the let keyword

    str = "EDITED"
    
    Compiler error :

        error: cannot assign to value: 'str' is a 'let' constant
*/

int_ = 22

print("this is \(str) by the \(int_)")



