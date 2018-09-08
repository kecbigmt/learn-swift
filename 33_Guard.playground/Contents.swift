// guard
// 異常処理をわかりやすくする仕組み
//

//func sayHi(_ msg: String?) {
//    // nilかnilじゃないかで条件分岐
//    // 処理が長くなったり条件分岐が複雑になると、どれが正常処理でどれが異常処理なのかが分かりにくくなる
//    if let s = msg {
//        print(s)
//    } else {
//        print("value not set!")
//    }
//}

//func sayHi(_ msg: String?) {
//    // early return, early exit: 異常だったらすぐに関数を抜けるようにすることでelse文を省略する書き方
//    // ただ、returnを書き忘れるミスが起こりやすい
//    if msg == nil {
//        print("value not set!")
//        return
//    }
//    print(msg!)
//}

func sayHi(_ msg: String?) {
    // guardをつけると、
    // ①returnをつけないとコンパイルが通らない
    // ②unwrapされた変数をそのまま使える
    guard let s = msg else {
        print("value not set!")
        return
    }
    print(s)
}
sayHi(nil)
sayHi("hello")
