
import SwiftUI

func returnData(string__ : String) -> Int {
    return Int(string__) ?? -1
}

func gameSound(option : Bool) throws -> String {
    if option {
        throw "MAGIC I can't Play Sound !"
    }
    return (String("Sound enabled !"))

}

extension String: LocalizedError {
    public var errorDescription: String? { return self }
}

do {

    let Sound:String = try gameSound(option: true)
    print("Sound started ! \(Sound)")
}
catch {
    print(error.localizedDescription)
}

print("check ", returnData(string__: "123A409"))
