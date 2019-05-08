# perl-gzip-sample

## Description

gzipデータを扱うサンプルです。

### open-sample.pl

メインのサンプルコードです。  
gzipな内部データを読み込むサンプルになります。  

#### 補足

gzipファイルを読み込んでいますが、  
`IO::Zlib`などでファイルの読み込みと同時にgzip展開したいわけではないので  
一度そのまま読み込んでいます。  

### output-sample.pl

gzipなデータを用意するための補助的なコードです。


