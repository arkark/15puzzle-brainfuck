import std.stdio;
import std.string;
import std.range;
import std.conv;
import std.file;

/*
 A Brainfuck interpreter written in Dlang.

$ dmd brainfuck.d
$ ./brainfuck 15puzzle.bf

 */

void main(string[] args) {
    if (args.length < 2) return;
    assert(exists(args[1]), "Could not find file '"~args[1]~"'");

    string code = args[1].readText;
    size_t index, pointer;
    char[] memory = new char[1<<20];
    memory[] = 0;

    for(index=0; index<code.length; index++) {
        assert(index>=0 && index<code.length);
        assert(pointer>=0 && pointer<memory.length);
        switch(code[index]) {
            case '>': pointer++; break;
            case '<': pointer--; break;
            case '+': memory[pointer]++; break;
            case '-': memory[pointer]--; break;
            case '.': {
                write(memory[pointer]);
                stdout.flush;
            } break;
            case ',': {
                char[] input = stdin.rawRead(new char[1]);
                if (input.empty) {
                    memory[pointer] = cast(char)(-1);
                } else {
                    memory[pointer] = input[0];
                }
            } break;
            case '[': {
                if (memory[pointer]==0) {
                    for(int level=0; ; index++) {
                        assert(index>=0 && index<code.length);
                        if (code[index] == '[') level--;
                        if (code[index] == ']') level++;
                        if (level==0) break;
                    }
                }
            } break;
            case ']': {
                if (memory[pointer]!=0) {
                    for(int level=0; ; index--) {
                        assert(index>=0 && index<code.length);
                        if (code[index] == '[') level--;
                        if (code[index] == ']') level++;
                        if (level==0) break;
                    }
                }
            } break;
            default:
        }
    }
}
