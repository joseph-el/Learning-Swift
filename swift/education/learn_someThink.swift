import SwiftUI

var name:String = "HELLO"
let adding:String = "Josseph"

if name != adding {
    print("YES")
}


name.append(adding)

print("the name is \(name) and her size : \(name.count)")

var ds:String = String()

if ds.isEmpty {
    print("YES EMPTY")
}