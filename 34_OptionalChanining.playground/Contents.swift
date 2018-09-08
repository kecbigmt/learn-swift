// Optional Chaining

//class User {
//    var name: String = ""
//}
//
//let user: User
//user = User()
//user.name = "him"
//let s = user.name.uppercased()
//print(s)


class User {
    var name: String? = ""
}

let user: User?
user = User()
// user? やuser?.name?とつけてあげると、その変数がnilだったらnilを、そうでなかったらその値を含むOptional型を返してくれる
user?.name = "him"
// 最後の変数だけnilチェックをすればいい
if let s = user?.name?.uppercased() {
    print(s)
}

// また user や name の片方、もしくは両方が nil だった場合は、単に nil が返ってくるだけで、エラーでプログラムが終了することがないのも Optional Chaining の良いところだったりします。
// それから慣れないうちは混乱してしまうのですが、Optional Chaining の「?」と、Optional 型の宣言を短く書くためのこちらの「?」は同じ記号ですが、意味はまったく違うので、きっちり区別して覚えておくようにしてください。

