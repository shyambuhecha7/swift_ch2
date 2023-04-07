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
func defalulepara() -> () -> Void {
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
            print("before set value \(newValue)")
        }
        didSet {
            print("after set value \(oldValue)")
            
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

enum S {
    case FB(String)
    case google
}

class Sample {
    lazy var a : Int = 10
    
    init(a : Int){
        self.a = a
        print("fgds")
    }
}
var asd = Sample(a: 22)
asd.a

class Initia {
    weak var a : Initia?
  var ir : String
    
    init(ir : String){
        self.ir =  ir
        print("initializw")
    }
    deinit{
        print("deinitialize")
    }
}
var o1 : Initia? = Initia(ir: "hfdhakshf")
var o2 : Initia? = Initia(ir: "hfdhakshf")

o1?.a = o2

o1 = nil
o2 = nil

class Check {
   
    var delegate : Buynow?
   
    func checkBalance(){
        print("balance is available ")
        delegate?.nowBuy()
    }
}
protocol Buynow {
    func nowBuy()
}

class Buy : Buynow {
    func nowBuy() {
        print("now buy it product")
    }
}

var check = Check()
var buy = Buy()
check.delegate = buy
check.checkBalance()

//
enum CampasePoint : CaseIterable {
    case east
    case west
    case north,south
    
}

var e = CampasePoint.east
e = .north
print(e)
print(type(of: e))

switch e {
case .east :
    print("EAST")
case .west :
    print("WEST")
case .north :
    print("North")
case .south :
    print("South")
}

let count = CampasePoint.allCases

@objc protocol SDD {
   @objc optional func sdd()
}

class Sdd : SDD {
    func sdd() {
        print("sddd")
    }
}

var ssdd = Sdd()
ssdd.sdd()

//
enum IntVal : Int {
    case num1 ,num2,num3
}
var n1 = IntVal.num1.rawValue
    
print(n1)

var n2 = IntVal.num2.rawValue
n2 = 10
print(n2)

//
enum M {
    case a
    case b
}
//
//struct FG {
//    var sd : Int  {
//        get {
//            return 103
//        }
//        set(newValue){
//            sd = newValue
//        }
//    }
//}
//var fg = FG()
//fg.sd = 200
//print(fg.sd)

func xcv() throws -> Int {
    print(5)
    return 6
}
try xcv()
















@objc protocol Aa {
   @objc optional func a()
    
    func sum()
}

//extension Aa {
//    func a() {
//        print("a")
//    }
//}




class MultipleInheritence {
    
    func b() {
        print("b")
    }
}

class Multiple :  Aa {

    func sum() {
        print("sun")
    }
    
    
    func printText(){
        print("hello world")
        
    }
    
//    func a() {
//        print("shyam")
//    }

}

var m = Multiple()
//m.a()
m.printText()
//m.b()


