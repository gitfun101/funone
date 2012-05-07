

$s = "this\nis\na\nnewline test.";

open (Fi, ">./test.txt");
print Fi $s;
close Fi;

