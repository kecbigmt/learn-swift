// Subscripts
// クラス内のプロパティに任意のindexでアクセスできるようになる
// 構造体、Enumにも使える

class Team {
    var members = ["empty", "fkoji", "dotinstall"]
    subscript(index: Int) -> String{
        get {
            return members[index]
        }
        set {
            // setterのなかでは渡された値をnewValueとして使える
            members.insert(newValue, at:index)
        }
    }
}

var giants = Team()
giants[0] = "taguchi"
print(giants[0])
