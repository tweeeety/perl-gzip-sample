#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use Compress::Raw::Zlib;

# read from file
my $fpath = "sample.txt.gz";
my ($fh, $lines);
open($fh, "< $fpath") or die("error :$!");
while (my $line = <$fh>){
  $lines .= $line;
}
print "[read text]\n$lines";
print "\n\n";

# infrate gzip data
my ($d, $status) = new Compress::Raw::Zlib::Inflate(
  -WindowBits => WANT_GZIP,
);
my $output;
$status = $d->inflate($lines, $output);
print "[output text]\n$output";
