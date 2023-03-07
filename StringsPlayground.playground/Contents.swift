import UIKit

var greeting = "Strings playground"
 

//create a string
let string : String = "My name is Shyam"
var str1 : String
str1 = "Hello"

var create_str : String = String("new string is created ")

print(create_str)

//in

//multiline string
var multiline_str : String = """
 \" multiline string literal includes all of the lines between its opening and closing quotation marks. The string begins on the first line after the opening quotation marks ( and ends on the line before the closing quotation marks, which means that neither of the strings below start or end with a line break: \"
 """
print(multiline_str)

print(string)
print(str1)

/*        -----------------------String Operation------------------
 */
//compare string
var str2 : String = "hello, Simform!"
var str3 : String = "hello, Simform!"

print(str2==str3)



// join to string //
 //1.append() - it is combile s2 to s1
var s1 : String = "Happy "
let s2 : String = "Holi!"

s1.append(s2)
print(s1)

 //concatinate a string  using +
var s3 : String = "Happy "
let s4 : String = "Dhuleti!"

print(s3 + s4)

//length of string
 var strLength = "Holi is a\\  \"festival\" of colors"
print(strLength)
print("Length of string is : \(strLength.count)")

//Built-in functions
var empty : String = ""
print(empty.isEmpty)

//
//print(" \(s3.uppercased())")
//print("\(s3.startIndex)")

var change_char : String = "change"

print(change_char)

// print all char of string
var str5 : String = "hello world"

for char in str5{
    print("\(char)")
    
    }

let i = str5.index(str5.startIndex, offsetBy: 7)
let mySubstring = str5[..<i]
print(mySubstring)















