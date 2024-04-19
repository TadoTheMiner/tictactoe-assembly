mkdir -p ./target/objects
nasm -f elf64 -o target/objects/tictactoe.o src/tictactoe.s
ld -o target/tictactoe target/objects/tictactoe.o
./target/tictactoe
