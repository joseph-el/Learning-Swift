

var Err: (Int, String) = (404, "PAGE NOT FOUND !")

print("error found > ", Err)
print("error found > ", Err.0)
print("error found > ", Err.1)
print("error found > ", Err.self)

let (getCode, getErr) = Err

print(getCode)
print(getErr)

// if i want get just the first tuple
let (first_tuple, _) = Err

print("check first tuple > ", first_tuple)


struct umm{
    var found:Bool
}

var ret:umm = umm(found: false)

let begin: (Float, Bool, umm) = (2.1, false, ret)

print("about > ", begin.2.found)

// You can name the individual elements in a tuple when the tuple is defined:

let game: (MOVE_UP: String, MOVE_DOWN: String) = (MOVE_UP : "⬆️" , MOVE_DOWN : "⬇️")
print("up >", game.MOVE_UP)
print("down >", game.MOVE_DOWN)



