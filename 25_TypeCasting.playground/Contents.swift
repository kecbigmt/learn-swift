// 型キャスト

class User {
    let name: String
    init(_ name: String) {
        self.name = name
    }
}

class AdminUser: User {
}

let user = User("tom")
let admin = AdminUser("charles")

let users: [User] = [user, admin] // AdminUserがUserを継承しているのでadminをUser扱いしてくれている

for user in users {
    //    if let u = user as? AdminUser { // userをAdminUserにキャストできるかを試してみる。できる場合はAdminUser型にキャストされる
    //            print(u.name)
    //    }
    if user is AdminUser {
        let u = user as! AdminUser //　型キャスト！
        print(u.name)
    }
}
