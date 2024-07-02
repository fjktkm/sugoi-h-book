# 備忘録

## 14

### 14.1

p.328 の `gcd'` は `gcdReverse` の誤植だと思われる．

### 14.3

p.338 の `pop` 関数は `get` でエラーが出る．
パターンマッチで場合分けしてエラー処理するといいと思う．

### 14.4

p.341 の `Control.Monad.Error` モジュールは `Deprecated` になっている．
`strMsg` 関数の代わりに `Control.Monad.Except` モジュールの `throwError` を使う．

### 14.5

`Monad` は `Applicative` のサブクラスになったため，`liftM` を利用する必要はない．

p.344 の `Writer` は型なので `writer` 関数にする必要があると思われる．
バージョンの変更に伴うものではなく誤植のような気がする．
