import UIKit

var greeting = "Hello, playground"


@propertyWrapper
class TwelveOrLess {
    private var number = 0
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
}


var a = TwelveOrLess()
print(a.wrappedValue)

var set : Set = [1,2,3]
set.remove(at: set.index(set.startIndex, offsetBy: 2))
set.insert(2)
set
set.update(with: 23)
set.update(with: 21)

set

protocol A {
    
    var a : String {
        get
    }
    func am()
}

struct AA {
    var a: String
    init(a : String){
        self.a = a
    }
}

var aa = AA(a: "shyam")
print(aa.a)

extension AA : A {
    var value: Int {
        get {
            return 10
        }
    }
    func am() {
        print("djskfjkajsjfj")
    }
    
    func add(){
        print("afdscf")
    }
}

aa.a
aa.add()
aa.am()
aa.value

//protocol
protocol Mfunc {
    mutating func changeVal(name : String)
}

struct Name : Mfunc {
    var name = "Shyam"
    
    mutating func changeVal(name: String) {
        self.name = name
    }
    
}

var s = Name()
s.changeVal(name: "fhhsfh")
print(s.name)

//function
func funcA(a aValue : Int) {
    print(aValue)
}
funcA(a: 10)

var f11 = 20
func f1(){
    func f2(){
        print(11)
    }
    f2()
}
f1()

//
func returnfunc() {
    print("return function")
}
func defalulepara() -> () -> Void{
   return returnfunc
}

(defalulepara())()


class ValueA {
    var valueA : Int {
        get {
            return 5
        }
        set {
            self.valueA = newValue
        }
    }
    
   
}

class ValueB : ValueA {
    var a = 10
    override var valueA: Int {
        get {
            return 10
        }
        set {
            self.valueA = newValue
        }
    }
}

var x = ValueB()
x.valueA

//
struct PropertyObserver {
    lazy var a : Int = 20
    
    var digit : Int = 10 {
        willSet {
            print("before set value \(digit)")
        }
        didSet {
            print("after set value \(digit)")
        }
    }
}
var po = PropertyObserver()
po.digit = 20
print(po.digit)
print(po.a)

//

var closure  = { (a : Int) -> String in
    
    "\(a)"
    
}
var c = closure(5)
print(c)


