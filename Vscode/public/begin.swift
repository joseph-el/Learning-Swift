
https://photos.google.com/share/AF1QipNNQyeVrqxBdNmBkq9ILswizuj-RYJFNt5GlxJZ90Y6hx0okrVSLKSnmFFbX7j5Mg?pli=1&key=RV8tSXVJVGdfS1RIQUI0Q3RZZVhlTmw0WmhFZ2V3
let pipe:String = "\n-----------------------------------------------------\n"

var ret:Int = 42
var eat:String = String("EAT")
let res: String = eat + String(ret)
print("res > \(res)")
var str:String = "HY the res >>>>>> \(ret + 1 - 1 * -1) <<<<<<<"
print(str)

print(pipe)

let questes: String = """
    HELLO MY NAME :
                        YOUSSEF
    FROM :
            THE WORLD
    AGE :
            80
    """

print(questes)
print(pipe)

var cars: [String] = ["bmw", "dacia", "jeep", "honda", "Tesla"]
cars.append("toyota")
// cars.popLast()

print(cars)

var occupations: [String : String] = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"

var map : [String : Int] = [
    "DEXTER" : 12,
    "JOSEPH" : 90,
    "LINA" : 21,
]

for (key, value) in map {
    print("\(key): \(value)")
}

// for empty map or empty arrays
var empty_array: [Any] = []
var empty_map: [AnyHashable : Any] = [:]
empty_map["HELLO"] = 23

print(pipe)



// print(occupations)





