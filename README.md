# Commodore 64 assembly program collection

Just a collection of very basic programs I wrote  
to learn assembly programming for 6504 processor.  
I used dasm for assembly and vice as a C64 emulator.  

# How to run
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
And voila.
