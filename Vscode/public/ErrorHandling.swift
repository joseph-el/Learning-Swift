
enum setErr: Error {
    case WR
}

func Makethrow() throws {

    let game:Int? = nil

    // var up:Bool = true
    // var left:Bool = false
    // var down:Bool = false
    // var right:Bool = true

    if game == nil{
        throw setErr.WR
    }
}

do {
    try Makethrow()
} catch {
    print("D")
}