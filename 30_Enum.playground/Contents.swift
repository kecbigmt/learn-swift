// 列挙型
// * 値型
// * クラスや構造体のようにメソッドを持つことができる
// * ExtensionやProtocolをつけることもできる

enum Direction {
    case right
    case left
}


var dir: Direction
//dir = Direction.right
dir = .right

// Switch文でEnumを使うと、すべてのケースが列挙されていないと怒られる
// すべてをきちんと列挙するか、defaultを入れれば解消される
switch (dir) {
case .right:
    print("right")
case .left:
    print("left")
}

// Enumに値を格納したい場合
enum DirectionNum: Int {
    case right = 1
    case left = -1
}

print(DirectionNum.right.rawValue)

