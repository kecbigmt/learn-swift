// extension

extension String {
    var length: Int {
        return self.count
    }
}
let msg = "hello"
print(msg.count)
print(msg.length)

// protocolにextensionを加える
// -> 実装を持ったprotocolを書ける

protocol Printable {
    func printout()
}

extension Printable {
    func printout() {
        print("now printing...")
    }
}

class ExtendedPrintableUser: Printable {
    let name: String
    init(_ name: String) {
        self.name = name
    }
}

let extendedPrintableUser = ExtendedPrintableUser("tom")
extendedPrintableUser.printout()
