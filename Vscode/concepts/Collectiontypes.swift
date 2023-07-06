
let pipe :String = "---------------------------------------------------------------------------"

// ---------------- Array ------------------ \\

var arr : [Int] = []
    arr.append(42)
    arr = []
var setting: [Double] = Array(repeating: 2.2, count: 42)
print("check > ", setting.count)
print("check > ", arr.count)

var res: [Int] = [2, 3, 7]

var adding: [Int] = res + arr
adding += [2, 8]

var variable: Int = adding[0]
print("check > ", adding.count)
print(pipe)

// iterate > 
for index :Int in adding {
    print(" ", index, terminator: " | ")
}
print("")

// Like map C++
var Names : [String] = ["Joseph", "Lina", "Dexter", "Nono Live", "Alex"]

for (ind, value ) in Names.enumerated() {
    print("index > \(ind) value : ", value, terminator: " | ")
} 
print(pipe)


// ------------------ Set Type Syntax --------------------- \\

var country: Set<Character> = Set<Character>()

country.insert("A")
country.insert("A")
print(pipe); print(pipe); print(pipe); print("")


import Foundation

var number: Int = 42



var CPP :[Int] =     [88, 100, 77]
var OPP : Set<Int> = [99, 220, 90]

// let unmanaged: Unmanaged<AnyObject> = Unmanaged<AnyObject>.passUnretained (as AnyObject)
// let unmanaged1: Unmanaged<AnyObject> = Unmanaged<AnyObject>.passUnretained(OPP[1] as AnyObject)
// let unmanaged2: Unmanaged<AnyObject> = Unmanaged<AnyObject>.passUnretained(OPP[2] as AnyObject)
// let unmanaged3: Unmanaged<AnyObject> = Unmanaged<AnyObject>.passUnretained(CPP[3] as AnyObject)

// print("Address 1 > ", unmanaged.toOpaque())
// print("Address 2 > ", unmanaged1.toOpaque())
// print("Address 3 > ", unmanaged2.toOpaque())
// print("Address 4 > ", unmanaged3.toOpaque())


// import Foundation

// let set: Set<String> = ["apple", "banana", "orange"]
// let semaphore: DispatchSemaphore = DispatchSemaphore(value: 0)

// DispatchQueue.global().async {
//     for element: String in set {
//         let unmanaged: Unmanaged<AnyObject> = Unmanaged<AnyObject>.passUnretained(element as AnyObject)
//         print("Address: \(unmanaged.toOpaque())")
//     }
//     semaphore.signal()
// }

// DispatchQueue.global().async {
//     semaphore.wait()
//     print("Done printing addresses.")
// }

print(pipe); print(pipe); print(pipe); print("")

var ui : [Int] = [23, 33, 1]

var unmanaged3: Unmanaged<AnyObject> = Unmanaged<AnyObject>.passUnretained(ui[0] as AnyObject)
print("Address of first > ", unmanaged3.toOpaque())
unmanaged3 = Unmanaged<AnyObject>.passUnretained(ui[1] as AnyObject)
print("Address of second > ", unmanaged3.toOpaque())
unmanaged3 = Unmanaged<AnyObject>.passUnretained(ui[2] as AnyObject)
print("Address of last > ", unmanaged3.toOpaque())

print(pipe)
for elem: Int in ui {
    unmanaged3 = Unmanaged<AnyObject>.passUnretained(elem as AnyObject)
    print("Address of elem > ", unmanaged3.toOpaque())

}
print("check > ", country.count)

print(pipe); print(pipe); print(pipe); print("")


var ly : Set<String> = ["Alex", "MEN", "JOSHE"]

// check address in Set
for it: String in ly {
    unmanaged3 = Unmanaged<AnyObject>.passUnretained(it as AnyObject)
    print("Address of it > ", unmanaged3.toOpaque())
}
// check edited or not !

var St : [String] = ["HE", "OL", "DE", "TY"]

// for var u : String in St {
//     u.insert(contentsOf: "JUUU", at: u.endIndex)
//     print(u)
    
// }

// print(pipe)

// for var u : String in St {
//     print(u)
// }

print(pipe); print(pipe); print(pipe); print("")

for var s: Range<Array<String>.Index>.Element  in  St.indices {
    print("Address of Index: \(Unmanaged.passUnretained(St[s] as AnyObject).toOpaque())")
}

print(pipe); print(pipe); print(pipe); print("")

for var s : String in St {
    print("Address of s: \(Unmanaged.passUnretained(s as AnyObject).toOpaque())")
}

print(pipe); print(pipe); print(pipe); print("")

// ------------------ Fundamental Set Operations -------------------- \\ 

