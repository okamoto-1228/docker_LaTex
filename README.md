# docker_latex

## Latexのコンパイル

1. コンパイルしたいファイルを含むフォルダをsrc以下に配置
1. make build（初回のみでよい）
    - exitでshellから抜け出す
1. 以下のコマンドでコンパイル
    - pdfファイルが出力される

```
make latex folder=<フォルダ名（src以下）> target=<.texの名前（.texは含めない）>
```

## make コマンド
コンテナのイメージファイル作成
```
make build
```

コンテナ生成+起動
```
make run
```

コンテナ起動（コンテナ停止しているものを起動）
```
make start
```
※make runではすでにあるコンテナは起動できない


コンテナに入る（インタラクティブシェル）
```
make shell
```

コンテナ停止（停止しないと削除できない）
```
make stop
```

コンテナ削除
```
make rm
```

githubへプッシュ
```
make git
```