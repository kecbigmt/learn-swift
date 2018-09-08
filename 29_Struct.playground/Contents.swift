//: Playground - noun: a place where people can play

// Struct
// クラスと似ている
// 相違点①：値型
// 相違点②：メソッドからプロパティを変更するにはmutatingを付ける必要がある
// 相違点③：継承ができない（Extension, Protocolは使える）

struct User {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    // mutatingをつけないと怒られる
    mutating func changeName() {
        self.name = name.uppercased()
    }
}

var originalInstance = User("tom")
var copiedInstance = originalInstance
originalInstance.name = "bob"
print(originalInstance.name) // "bob"
print(copiedInstance.name) // "tom" <- クラスでは"bob"だった

