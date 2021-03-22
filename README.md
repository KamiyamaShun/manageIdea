# 今後の課題
- Active Model Serializersのgemを使うことでレスポンスの画面と近いものが作れると予想
- APIの登録・ステータスの表示方法の理解を深める必要がある
- Formオブジェクトを使うことで、同時に2つのテーブルに保存できるが、今回の仕様では使うことができないと推測

## categoriesテーブル
| Column                | Type   | Options                   |
| --------------------- | ------ | ------------------------- |
| name                  | string | null: false, unique: true |

- has_many :ideas

## ideasテーブル
| Column                | Type       | Options           |
| --------------------- | -----------| ----------------- |
| body                  | string     | null: false       |
| category              | references | foreign_key: true |

- belongs_to :category