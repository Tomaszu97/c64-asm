# Commodore 64 assembly program collection

Just a collection of very basic programs I wrote  
to learn assembly programming for 6504 processor.  
I used dasm for assembly and vice as a C64 emulator.  

# How to run
# Option 1 - manually
To assemble a program go into a program directory and execute:
```
dasm main.asm -otest.prg
```
Then, open it with vice:
```
x64sc test.prg
```
When it starts up, run this from within an emulator:
```
SYS 4096;
```
# Option 2 - using script
Go inside program directory and run
```
../run.sh
```
Do not move your mouse - keysrokes will be injected after VICE starts.
