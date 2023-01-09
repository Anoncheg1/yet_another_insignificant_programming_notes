;-*- mode: Org; fill-column: 110;-*-

- case sensitive programming language.
* Varibles
- $age=32 ;- varibale
- @ages = (25, 30, 40); - array
  - $ages[0] = 25
  - print $size=scalar (@array);
- #hash = ('John Paul' => 45, 'Lisa' => 30); - key/value
  - (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
  - $data{'John Paul'} = 45
  - @names = keys %data;
  - @ages = values %data;
- my $color = 'red'; -  lexically scoped variable.
- our $color = 'red'; - global variable
- use strict; -  requires you to declare variable explicitly before using it.

* General Variables
https://perldoc.perl.org/perlvar
- $_
  - as a default argument - abs, alarm, chomp, chop, chr, chroot, cos, defined, eval
  - All file tests (-f, -d) except for -t
  - The pattern matching operations m//, s/// and tr/// (aka y///) when used without an =~ operator.
  - The default iterator variable in a foreach loop if no other variable is supplied.
  - The implicit iterator variable in the grep() and map() functions.
  - The implicit variable of given().
  - The default place to put the next value or input record when a <FH>, readline, readdir or each operation's
    result is tested by itself as the sole criterion of a while test. Outside a while test, this will not
    happen.
- @_
  - Within a subroutine the array @_ contains the parameters passed to that subroutine. Inside a subroutine,
    @_ is the default array for the array operators pop and shift.
* References
- $scalarref = \$foo;
- $arrayref  = \@ARGV;
- $hashref   = \%ENV;
- $coderef   = \&handler;
- $globref   = \*foo;
- $arrayref = [1, 2, ['a', 'b', 'c']]; - anonymous array
- $coderef = sub { print "Boink!\n" }; - anonymous subroutine
- ref($scalarref) -> SCALAR
- dereference:
  - $$scalarref == $foo
  - @$arrayref  == @ARGV;
* if else
- $status = ($age > 60 )? "A senior citizen" : "Not a senior citizen";
* loops
#+begin_src perl
for( ; ; ) {
   printf "This loop will run forever.\n";
}

foreach $a (@list) {
   print "value of a: $a\n";
}
#+end_src
* comments
- # - one line
- =begin comment\n=cut - multiline comment
* strings
- '\n' -> \n not interpolate
- "\n$var" ->  "text" with new line, and interpolate $var

#+begin_src perl
$var = <<"EOF";
This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be
interpolated. For example value of a = $a
EOF


$var = <<'EOF';
This is case of single quote so variable value will be
interpolated. For example value of a = $a
EOF
#+end_src

* subroutines
#+begin_src perl
# Function definition
sub Hello {
   print "Hello, World!\n";
}

# Function call
Hello();

#+end_src
