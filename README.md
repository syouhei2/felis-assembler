# Assembler

```shell
$ ./asm.sh [asm files]
```

ascii2bin.pyは[felis-simulater](https://github.com/ordovicia/felis-simulator)
からお借りしました。

　コメントについて
　　　　#で始まる行と、命令の引数より後に書かれた文字列は無視されます

　　　　例  
```
　　　　　　　　　　#comment  
	  main:  
     	  add r1 r2 r3 #comment  
       	  add r1 r2 r3 comment  
      	  #comment  
       	  #comment  
```

  デバッグについてとりあえず
```
	$make
	./linker [asm files]
```
でリンク後のアセンブリが標準出力に出力されます
アセンブリ結果を確認したい場合
```
	$make
	./linker [asm files]　> new.s
	./asm [options] new.s
```
などとしてください。標準出力でアセンブリ結果が表示されます。
オプション
```
	・-l : ラベルの一覧とラベルのアドレスが表示されます。表示個数は適当ですが足りなければasm.c内のopener関数をいじってください。
	・-f : アセンブリのビット列がファイルの何行目と対応しているかを表示します。
```
