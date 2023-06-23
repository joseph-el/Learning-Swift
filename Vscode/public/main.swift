
struct main {
    var name:String?
    var model:Int?
    var price:Int?
    var mata:Character?

    func getName() -> String {
        return name!;
    }
}

var cars:main
cars.name! = "dacia"
cars.mata = "D"
cars.model = 2018
cars.price = 400000