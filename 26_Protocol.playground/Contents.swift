// Protocol

protocol Printable {
    var type: String { get }
    var count: Int { get set }
    func printout()
}

class PrintableUser: Printable {
    let name: String
    let type = "Laser"
    var count = 0
    init(_ name: String) {
        self.name = name
    }
    func printout() {
        count += 1
        print("\(type): \(count)")
    }
}

let printableUser = PrintableUser("tom")
printableUser.printout()
printableUser.printout()
printableUser.printout()
