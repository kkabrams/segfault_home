#!/usr/pkg/bin/perl
chdir("/home/segfault/chat");
my $sentence="";
my $i=0;
@words=split(/ /,join(" ",@ARGV));
foreach(@words) {
 if(!chdir($_)) {
  $args=join(" ",@words[$i .. $#words]);
  $args =~ s/'/'\\''/g;
  system("./_ '" . $args . "'\n");
  exit;
 }
 $i++;
}
system("./_");
