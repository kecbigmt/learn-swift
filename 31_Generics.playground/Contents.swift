 // Generics
 // 汎用化されたデータ型
 
 // ある整数を渡したらそれを3回表示してくれる関数を想定する
 // func getThree(x: Int) {
 //    print(x)
 //    print(x)
 //    print(x)
 // }
 //
 
 // これと全く同じことやDoubleやStringでもやりたいときに別の関数を用意するのは面倒
 // Genericsで汎用化してあげればいい

 func getThree<T>(x: T) {
    print(x)
    print(x)
    print(x)
 }
 
 getThree(x: 5)
 getThree(x: "hello")
 getThree(x: 2.3)
