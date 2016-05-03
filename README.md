# Brainf\*ck製15パズル

Brainf\*ckで15パズルを作りました．

Brainf\*ckで何らかゲームを作ることを目的として作ったため，無駄に長いコードになってしまいました．

また，乱数の実装は大変そうだったので，パズルの初期位置は固定です．

![demo](/demo.gif)

# 実行方法

テスト用にD言語でBrainf*ckのインタプリタを作りました．

コンパイルして実行して下さい．
```
$ ./brainfuck 15puzzle.bf
```

# クリア条件

01 02 03 04

05 06 07 08

09 10 11 12

13 14 15 00

の状態にしたらクリア

# 操作方法

下の文字を入力することで，00と各方向の数字との交換

w…上の数字と交換

s…下の数字と交換

a…左の数字と交換

d…右の数字と交換

***
ソースコードは[こちら](/src/15puzzle.bf)