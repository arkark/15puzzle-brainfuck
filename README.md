A 15 puzzle written in Brainfuck
===

[![license: MIT](https://img.shields.io/badge/license-MIT-yellow.svg)](https://github.com/ArkArk/15puzzle-brainfuck/blob/master/LICENSE)

Brainfuck is fully Turing complete, so by using it you can implement whatever you want. Of course it includes games, for examle **15 puzzle**!

[![demo](/demo.gif)](https://asciinema.org/a/204514)

## Run

Run [this](/src/15puzzle.bf) with Brainfuck interpreters or compilers (which should be interactive).

- E.g. [Brainfuck Online Simulator](https://arkark.github.io/brainfuck-online-simulator/15puzzle)

If you're developing an interpreter or a compiler, let's try to use this for the operation test of it :)

## Play

This game's rules are the same as that of general 15 puzzles.

### Completed condition

This game is completed on the following condition:

```
01 02 03 04
05 06 07 08
09 10 11 12
13 14 15 00
```

### How to operate

Input a character (one of `wasd`), then `00` is swapped for the corresponding number.

- `w`: swapped for the one on the **upper**
- `a`: swapped for the one on the **left**
- `s`: swapped for the one on the **lower**
- `d`: swapped for the one on the **right**

## Source code

The source code is [here](/src/15puzzle.bf).

## License

[MIT](https://opensource.org/licenses/MIT)
