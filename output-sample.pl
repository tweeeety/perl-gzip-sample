#!/usr/bin/env perl
use strict;
use warnings;
use utf8;

use Cwd;
use Compress::Zlib;
use Encode;
use File::Spec;

my $text = <<'EOS';
今日はおやすみ
今日は良い天気でした

まる
EOS
$text = encode('utf-8', $text);

my $wd = Cwd::getcwd();
my $fpath = File::Spec->catfile($wd, "sample.txt.gz");
my $fh = gzopen($fpath, "wb") or die "Could not create file.";
$fh->gzwrite($text);
$fh->gzclose();

1;
