// 例外処理

// Error ProtocolをつけたEnum
enum LoginError: Error {
    case emptyName
    case shortName
}

class User {
    let name: String
    init(_ name: String) {
        self.name = name
    }
    func login() throws {
        guard name != "" else {
            throw LoginError.emptyName
        }
        guard name.count > 5 else {
            throw LoginError.shortName
        }
        print("login success!")
    }
}

//let user = User("tom") // too short
//let user = User("takahashi") // login success!
let user = User("") // please enter your name

do {
    try user.login()
} catch LoginError.emptyName {
    print("please enter your name")
} catch LoginError.shortName {
    print("too short")
}
