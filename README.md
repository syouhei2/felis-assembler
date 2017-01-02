# Assembler

```shell
$ ./asm.sh [asm file]
```

ascii2bin.pyは[felis-simulater](https://github.com/ordovicia/felis-simulator)
からお借りしました。

　コメントについて
　　　　#で始まる行と、命令の引数より後に書かれた文字列は無視されます

　　　　例  
　　　　　　　　　　#comment  
	  main:  
     	  add r1 r2 r3 #comment  
       	  add r1 r2 r3 comment  
      	  #comment  
       	  #comment  

