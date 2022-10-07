import UIKit

/* switch構文
 * サンプルコード(Sample1)
 */
//let day = (1,1)
//switch day {
//case(1,1): print("元旦")
//case(2,11): print("建国記念日")
//case(5,3): print("憲法記念日")
//default: break
//}

/* 列挙型
 * 基本系(Sample2)
 */

// まずは基本
//enum Direction {
//    case up
//    case down
//    case right
//    case left
//}
//
//let d = Direction.down
//var x: Direction = .down
//print(d==x)

// メソッド定義(Sample3)
//enum Direction {
//    case up, down, right, left
//    // 以下メソッドの定義
//    func clockwise() -> Direction {
//        switch self {
//        case .up:
//            return .right
//        case .down:
//            return .left
//        case .right:
//            return .down
//        case .left:
//            return .up
//        }
//    }
//}
//
//let d = Direction.down
//print(d.clockwise() == Direction.left) // true
//print(d.clockwise().clockwise() == Direction.up) // true

/* 値型の列挙型
 * Sample4
 *
 */

//enum Direction : Int {
//    case up = 0, right, down, left
//
//    func clockwise() -> Direction {
//        let t = (self.rawValue + 1) % 4
//        return Direction(rawValue: t)!
//    }
//}
//
//let d: Direction = Direction(rawValue: 0)!
//print(d.rawValue)
//print(d.clockwise())

enum Ticket {
    case 切符(Int, Bool, 回数券:Bool) // 普通圏：価格、小人、回数券かどうか
    case カード(Int, Bool)           // プリペイドカード：残高、小人
    case 敬老パス                    // 敬老パス

    switch t {
    case let .切符(fare, flag, _):
        print("普通圏:\(fare)" + (flag ? "小人" : "大人"))

    case .敬老パス:
        print("敬老パス")
    }
}

let t = Ticket.切符(200, false, 回数券: true)
print(t)
