import SwiftUI

struct DEL {

    var NAME:String
    var IS:Bool
    var D3:Float
    var Sound:Bool

    public func Found() -> Bool {
        return Sound
    }
    // func STE()
    public func ft_putstr(str: String) {
        write(STDOUT_FILENO, str , strlen(str))
        // return strlen(str)
    }
}

enum MyEnum: Int {
    case RET
    case SZ

    static let RETRawValue: Int = 1 << 1
    static let SZRawValue: Int = 1 << 2

    static func getRawValue(for case: MyEnum) -> Int {
        switch `case` {
        case .RET:
            return RETRawValue
        case .SZ:
            return SZRawValue
        }
    }
}

var ret:DEL = DEL(NAME: "joseph", IS: false, D3: 3.3, Sound: true)

// IF CONDITION

if ret.Found() {
    ret.ft_putstr(str: "TRUE\n")
    ret.IS = false
}

// if else

if ret.Found() {
    print("Found")
} else {
    print("Not Found")
}

// if else if else

if ret.Found() {
    ret.ft_putstr(str: "if \n")
} else if !ret.Found() {
    ret.ft_putstr(str: "else if \n")
} 
else {
    ret.ft_putstr(str: "Nothing !\n")
}

print("-------------------------------------------------------------------------------------")

/*
    AND(&&) | OR(||) | BITWISE(& | ~ ^ << >>) Switch
*/

var ki:DEL = DEL(NAME: "Dexter", IS: true, D3: 222.2, Sound: false)

// AND OR

var x:Int = -1
var y:Int = 1

if ret.Found() && x > 1 && y < 1 {
    ki.ft_putstr(str: "&& true\n")
} else {
    ki.ft_putstr(str: "&& false---\n")
}

!ki.Found() || x != 1 ? ki.ft_putstr(str: "||\n") : print("invalid ||")

(!ki.Found() && y > 0) || x == -1 ? print(" match && || ") : print("error || &&")

print("-------------------------------------------------------------------------------------")

// BITWISE

var MOVE_right: Int = (1<<2)
var MOVE_down: Int  = (1<<4)
var MOVE_left: Int  = (1<<1)
var MOVE_up: Int    = (1<<3)

func moving(move:Int, msg: String) -> Bool {

    if move == 0 || move & ~(MOVE_down | MOVE_left | MOVE_right | MOVE_up) != 0 { return false }


    if move & (MOVE_up | MOVE_down) != 0 {
        move & MOVE_up != 0 ? print("MOVE UP") : print("MOVE DOWN")
    }

    if move & (MOVE_left | MOVE_right) != 0{
        move & MOVE_right != 0 ? print("MOVE RIGHT") : print("MOVE LEFT")
    }

    print(msg); return true
}

x += moving(move: MOVE_up, msg: "DEXTER PLAYER") ? 0 : 0
x += moving(move: MOVE_right, msg: "LINA PLAYER") ? 0 : 0
x += moving(move: MOVE_left, msg: "JOSEPH PLAYER") ? 0 : 0
x += moving(move: MOVE_down, msg: "TAHA PLAYER") ? 0 : 0
x += moving(move: -1, msg: "AYMAN PLAYER") ? 0 : 0

print("-------------------------------------------------------------------------------------")

// switch casec 


var Langue:Int = 2

switch Langue {
    case 1:
        print("MD")
    case 2:
        print("TR")
    case 3:
        print("WE")
    case 4:
        print("TU")
    default :
        print("INVALID !")
}

var char:Character = "Q"

switch char {

    case "A", "B", "C", "D", "E":
        print("VLD")
    case "A" ... "Z" :
        print("BOB")
        
    default :
        print("INV")
}

var str:String = "HELP"

switch str {
    case "KI" :
        print("U")
    case "KILL" :
        print("USE")
        
}