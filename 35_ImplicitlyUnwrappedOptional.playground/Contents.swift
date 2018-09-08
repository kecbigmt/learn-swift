// Implicitly Unwrapped Optional
// 暗黙的アンラップオプショナル型
// プログラムの構造上はOptional型だが、いったん値を設定したらその後はnilになりえないような値を扱うことがある
// その場合にいちいち!をつけてUnwrapするのが面倒
// 「暗黙的アンラップオプショナル型」であればUnwrap不要になる

//var msg: String?
var msg: String! // ?ではなく!をつけるとImplicitly Unwrapped Optionalになる
msg = "hello"

//if msg != nil {
//    print(msg!)
//}
print(msg) // 値を設定されたらUnwrapする必要がない
