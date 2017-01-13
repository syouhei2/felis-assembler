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
	・-l n: ラベルの一覧とラベルのアドレスがn個目まで表示されます。n入れないとバグります。
	・-f : アセンブリのビット列がファイルの何行目と対応しているかを表示します。
```
