#!/usr/bin/perl
$grain = 1;
my $output_file = shift || "m.pl.out";
(-e $output_file) && unlink $output_file;

$timestamp = time;
system("echo $timestamp > $output_file");
system("hostname >> $output_file");

for($i=0;$i<(7 * 24 * 60/$grain);$i++) {
  system("uptime >> $output_file");
sleep $grain * 60;
}
