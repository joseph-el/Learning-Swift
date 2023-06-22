import SwiftUI

struct DLM {

    var f_name:String
    var l_name:String
    var age:Int
    var gender:Bool

    func Display() -> Bool {
        print("---------------------------")
        print("\(f_name)-\(l_name)-\(age)-\(gender ? "MEN" : "WOMEN")")
        print("---------------------------")
        return gender ? true : false
    }
}

var ret: DLM = DLM(f_name: "JOSEPH", l_name: "el-idrissi", age: 20, gender: true)

ret.Display() ? print("WELCOME") : print("GETOUT")


var Vs:DLM?

Vs?.age = 12
Vs?.f_name = "Dexter"
Vs?.l_name = "Johen"



