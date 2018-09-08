//: Playground - noun: a place where people can play

import UIKit

// Int, Double, Array, .. -> 値型
// Class -> 参照型

class User {
    var name: String
    init(_ name: String) {
        self.name = name
    }
}

var originalValue = 10
var copiedValue = originalValue // originalの値そのものが代入される
originalValue = 20
print(originalValue) // 20
print(copiedValue) //10

var originalInstance = User("tom")
var copiedInstance = originalInstance // originalが格納されている場所が代入される
originalInstance.name = "bob"
print(originalInstance.name) // "bob"
print(copiedInstance.name) // "bob"

