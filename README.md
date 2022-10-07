# Swift_Enum

## パターン（case,switch等）

### switch文
```
// 基本の型
switch 式 {
	case ラベル1:
		文
	case ラベル2:
		文
	// defaultは最後に記載する
	default:
		文
}
```

### 列挙型
```
// 基本の型
enum 列挙型名 {
	case ケース名A
	case ケース名B
	...
}
```
- 基本系に関してはSample2を参照
- ケース名は「キャメルケース」で記述する
- 列挙型の定義にメソッドを含めて、型全体としての動作や機能を表すことができる（Sample3参照）
