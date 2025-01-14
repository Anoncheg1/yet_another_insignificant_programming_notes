
# Table of Contents

1.  [help](#orga2dc887)
2.  [REPL](#org8baaa62)
3.  [scripting](#org5c2114a)
4.  [Varibles](#org4cb260b)
    1.  [null](#orgd49ba8d)
    2.  [context](#org6718f13)
5.  [General Variables](#orgd01157a)
6.  [references](#orgd745cfa)
7.  [comparision](#orgaffae56)
8.  [if else](#org4de5329)
9.  [loops](#orgabe9c15)
10. [comments](#org0863e3c)
11. [strings](#orgb88b60c)
    1.  [examples](#org76cebf4)
    2.  [functions](#org20e0ac7)
    3.  [special funcitons](#orgb150f12)
    4.  [EOF](#org2faa842)
12. [arrays](#orgd1b1c44)
13. [Hash Variables](#org547ae54)
14. [subroutines](#org5dde28c)
    1.  [return value](#orge2abc10)
    2.  [ex](#orgc39a6a6)
15. [I/O operators](#orgc85cb15)
16. [IPC inter-process communication](#org33975f3)
    1.  [sockets](#orgc357212)
        1.  [program1](#org87d0f79)
        2.  [program2](#org5299029)
    2.  [file](#org07566c7)
17. [Date and Time](#orgd91d177)
18. [documentation style](#orgeac0d5a)
19. [code style](#org948826b)

;-**- mode: Org; fill-column: 110;-**-

-   case sensitive programming language.


<a id="orga2dc887"></a>

# help

-   perldoc -f print
-   perldoc strict
-   perldoc -q FAQ Keyword
-   perldoc -q "if"
-   perldoc -v PerlVariable
-   perldoc -a PerlAPI
-   man perlrun - everythin about command "perl"


<a id="org8baaa62"></a>

# REPL

    perl -de1
    perl -e 'do{print("perl> ");$_x=<>;chomp $_x;print(eval($_x)."\n")}while($_x ne "q")'


<a id="org5c2114a"></a>

# scripting

use strict; # requires you to declare variable explicitly before using it.
use warnings; # All warnings are enabled in a block
no warnings; # all warnings are disabled in a block

path looking for modules:

    perl -e 'print "@INC";'


<a id="org4cb260b"></a>

# Varibles

-   $age=32 ;- varibale
-   @ages = (25, 30, 40); - array
    -   $ages[0] = 25
    -   print $size=scalar (@array);
-   \#hash = ('John Paul' => 45, 'Lisa' => 30); - key/value
    -   (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);
    -   $data{'John Paul'} = 45
    -   @names = keys %data;
    -   @ages = values %data;
-   my $color = 'red'; -  lexically scoped variable.
-   our $color = 'red'; - global variable
-   qw(foo bar baz)  is semantically equivalent to the list: "foo", "bar", "baz"
-   ref(?) - get type
-   defined() - to check that variable is defined


<a id="orgd49ba8d"></a>

## null

    use strict;
    use warnings;
    my $a = "asd";
    my $b;
    print "defined? ", (defined($a) || "0"), "\n" ;
    print "defined? ", (defined($b) || "0"), "\n" ;

    defined? 1
    defined? 0


<a id="org6718f13"></a>

## context

function behave different in different context - Used for as some sort of like overloading.

two major contexts:

-   scalar - $x, $x[1], $x{"ray"}
    -   numeric, string, and don't care context,
-   list - @x, @x[1], @x{"ray"}, %x; ($x,$y,$z) = ,
-   void

Forcing context:

    print scalar localtime();
    my $match_count = ()= /x/g;

Determining context with wantarray:

    wantarray() - list
    defined wantarray() - false value that's defined
    undef - void context


<a id="orgd01157a"></a>

# General Variables

<https://perldoc.perl.org/perlvar>

-   $\_
    -   as a default argument - abs, alarm, chomp, chop, chr, chroot, cos, defined, eval
    -   All file tests (-f, -d) except for -t
    -   The pattern matching operations m//, s/// and tr/// (aka y///) when used without an =~ operator.
    -   The default iterator variable in a foreach loop if no other variable is supplied.
    -   The implicit iterator variable in the grep() and map() functions.
    -   The implicit variable of given().
    -   The default place to put the next value or input record when a <FH>, readline, readdir or each operation's
        result is tested by itself as the sole criterion of a while test. Outside a while test, this will not
        happen.
-   @\_
    -   Within a subroutine the array @\_ contains the parameters passed to that subroutine. Inside a subroutine,
        @\_ is the default array for the array operators pop and shift.


<a id="orgd745cfa"></a>

# references

-   $scalarref = \\$foo;
-   $arrayref  = \\@ARGV;
-   $hashref   = \\%ENV;
-   $coderef   = \\&handler;
-   $globref   = \\\*foo;
-   $arrayref = [1, 2, ['a', 'b', 'c']]; - anonymous array
-   $coderef = sub { print "Boink!\n" }; - anonymous subroutine
-   ref($scalarref) -> SCALAR
-   dereference:
    -   $$scalarref == $foo
    -   @$arrayref  == @ARGV;


<a id="orgaffae56"></a>

# comparision

-   && and || -  logical AND and OR.
-   ! for NOT
-   <=> - number comparison
    -   1 if a > b
    -   0 if a = b,
    -   -1 if a < b.

<a id="org71faef6"></a>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Equality</th>
<th scope="col" class="org-left">Numeric</th>
<th scope="col" class="org-left">String</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Equal</td>
<td class="org-left">\==</td>
<td class="org-left">eq</td>
</tr>


<tr>
<td class="org-left">Not Equal</td>
<td class="org-left">!=</td>
<td class="org-left">ne</td>
</tr>


<tr>
<td class="org-left">Comparison</td>
<td class="org-left">&lt;=&gt;</td>
<td class="org-left">cmp</td>
</tr>
</tbody>
</table>

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Relational</th>
<th scope="col" class="org-left">Numeric</th>
<th scope="col" class="org-left">String</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Less than</td>
<td class="org-left">&lt;</td>
<td class="org-left">lt</td>
</tr>


<tr>
<td class="org-left">Greater than</td>
<td class="org-left">&gt;</td>
<td class="org-left">gt</td>
</tr>


<tr>
<td class="org-left">Less than or equal</td>
<td class="org-left">&lt;=</td>
<td class="org-left">le</td>
</tr>


<tr>
<td class="org-left">Greater than or equal</td>
<td class="org-left">&gt;=</td>
<td class="org-left">ge</td>
</tr>
</tbody>
</table>

    print "yes" if $string1 eq $string2;

    print !1 . " s " . !0 . !"";

    s 11


<a id="org4de5329"></a>

# if else

-   $status = ($age > 60 )? "A senior citizen" : "Not a senior citizen";


<a id="orgabe9c15"></a>

# loops

-   for ($count = 1 ; $count <= 3 ; $count+=1)
-   foreach $word (@data)
-   while ($count >= 0)
-   do { } while(condition);
-   until (condition)

keywords:

-   next; - continue
-   last; - break
-   redo; - execute the current iteration again without checking the condition

    for( ; ; ) {
       printf "This loop will run forever.\n";
    }
    
    foreach $a (@list) {
       print "value of a: $a\n";
    }


<a id="org0863e3c"></a>

# comments

-   \# - one line
-   =begin comment\n=cut - multiline comment


<a id="orgb88b60c"></a>

# strings

see [7](#org71faef6)

-   '\n' -> \n not interpolate (equal to q//)
-   "\n$var" ->  "text" with new line, and interpolate $var (equal to qq//)
-   (.) - concatenation, (.=)

Transform Strings to Arrays:

-   @string = split('-', $var<sub>string</sub>);
-   $string1 = join( '-', @string );

add new to print:

    use feature qw(say);

Interpolation - is a process of transformation of variable/escaped<sub>car</sub> to string in "" or qq//.


<a id="org76cebf4"></a>

## examples

    my $target = "##cooking1";
    print $target eq "##cooking" . "ss";
    # print shift;

    $a="aad3:44";
    @v = split(":", $a);
    print scalar @v . " @v[0]";
    if (scalar @v > 1){
        print "WTF\n"
    }

    2 aad3WTF


<a id="org20e0ac7"></a>

## functions

-   print("Length: ", length($s));
-   print $msg1, "",$msg2, "\n";
-   uc($s)/lc() - upper case
-   substr() - get from index with lenght
-   index() - get position of first occurance
-   chomp() - remove trainling new line


<a id="orgb150f12"></a>

## special funcitons

replace string:

    my $var1 = "Tigers are big and frightening.";
    $var1 =~ s/Tigers/Lions/;

Finding a match

    my $var = "Tigers are big and frightening.";
    if($var =~ /frightening/) ...


<a id="org2faa842"></a>

## EOF

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


<a id="orgd1b1c44"></a>

# arrays

    @ages = (25, 30, 40);
    @words = qw/This is an array/;
    @var_10 = (1..10);

access by index, start from zero, [-1] - second from the end.

    print "\$ages[0] = $ages[0]\n";

-   scalar @array # size or length
-   $max<sub>index</sub> = $#array;
-   push @ARRAY, LIST # add values to the end of the array.
-   pop @ARRAY # from the end
-   shift @ARRAY # get first and remove it

slice:

-   @weekdays = @days[3..5];

Replacing Array Elements: splice @ARRAY, OFFSET [ , LENGTH [ , LIST ] ]

    splice(@nums, 5, 5, 21..25);

sort [ SUBROUTINE ] LIST

-   @foods = sort(@foods);
-   ($[) - is special variable containing first index of all arrays, almost always be 0

    @numbers = (1,3,(4,5,6)); # merging

check if it is empty:

    print "asd" if !@a; # print if empty
    print "asd" if !@a; # print if not empty

    @ages = (25, 30, 40);
    print scalar @ages, $ages[1];

    330


<a id="org547ae54"></a>

# Hash Variables

(%) sign. A hash is a set of key/value pairs.


<a id="org5dde28c"></a>

# subroutines

You don't define arguments of subroutine, you access it with @\_. return("re") - return value.

-   (;) don't required after definition.
-   call: subroutine();

Arguments:

-   $n = scalar(@\_);
-   my @list = @\_;

Local variables, require:

    use feature 'state';
    state $count = 0; # initial value


<a id="orge2abc10"></a>

## return value

single value returned as a single, multiple returned as an array.

    use strict;
    use warnings;
    use feature qw(say);
    
    sub a1 {
        return("444")
    }
    say(a1());
    
    sub a2 {
        return("444", 23)
    }
    my($b, $c) = a2();
    say $c;

    444
    23


<a id="orgc39a6a6"></a>

## ex

    # Function definition
    sub Hello {
       my ($server, $msg, $nick, $address, $target) = @_;
       print "Hello, World!\n";
       return("a", "b", "c");
    }
    
    # Function call
    @retval = Hello();
    
    
    sub Mul($$)
    {
        my($a, $b ) = @_;
        my $c = $a * $b;
    
        # Return Value
        return($a, $b, $c);
    }


<a id="orgc85cb15"></a>

# I/O operators

equivalent:

-   while (defined($\_ = <STDIN>)) { print; }
-   while ($\_ = <STDIN>) { print; }
-   while (<STDIN>) { print; }
-   for (;<STDIN>;) { print; }
-   print while defined($\_ = <STDIN>);
-   print while ($\_ = <STDIN>);
-   print while <STDIN>;

**STDIN, STDOUT, and STDERR** are predefined filehandles. New created with open().

<> diamond operator - null filehandle, used to emulate - the first time "<>" is evaluated, the @ARGV array is
 checked, and if it is empty, $ARGV[0] is set to "-", which when opened gives you standard input. The @ARGV
 array is then processed as a list of filenames.


<a id="org33975f3"></a>

# IPC inter-process communication

-   <https://metacpan.org/pod/IPC::Run>
-   <https://perldoc.perl.org/perlipc>


<a id="orgc357212"></a>

## sockets


<a id="org87d0f79"></a>

### program1

    use strict;
    use warnings;
    use IO::Socket::UNIX;
    
    my $socket_path = "/tmp/my_unix_socket";
    
    my $socket = IO::Socket::UNIX->new(
        Type   => SOCK_STREAM,
        Local  => $socket_path,
        Listen => 1,
    ) or die "Can't create socket: $!";
    
    my $client = $socket->accept();
    
    print $client "Hello from server!\n";
    
    close($client);
    close($socket);


<a id="org5299029"></a>

### program2

    use strict;
    use warnings;
    use IO::Socket::UNIX;
    
    my $socket_path = "/tmp/my_unix_socket";
    
    my $socket = IO::Socket::UNIX->new(
        Type   => SOCK_STREAM,
        Peer   => $socket_path,
    ) or die "Can't connect to socket: $!";
    
    while (my $line = <$socket>) {
        print "Received from server: $line";
    }
    
    close($socket);


<a id="org07566c7"></a>

## file

    use strict;
    use warnings;
    use IO::Handle;
    use Fcntl qw(:flock);
    
    sub openFileWrite {
        #
        # Accept file_path and return fh.
        #
        my ($file_path) = @_; # my $file_path = "/tmp/messages.txt";
        open(my $fh, '>>', $file_path) or die "Can't open file '$file_path' - $!\n";
        $fh->autoflush(1);
        return($fh)
    }
    sub myWriteToFile {
        #
        # Use global $fh created from $file_path
        #
        my ($message, $fh) = @_;
        print $message . "\n";
    
        flock($fh, LOCK_EX) or die "Could not lock file - $!\n";
        print $fh $message . "\n";
        flock($fh, LOCK_UN) or die "Cannot unlock file - $!\n";
    
    }
    my $fh = openFileWrite("/tmp/messages.txt");
    myWriteToFile("hello 2", $fh);
    close($fh);

    # rm "/tmp/messages.txt"
    cat "/tmp/messages.txt"

    use strict;
    use warnings;
    use IO::Handle;
    use Fcntl qw(:flock);
    
    my $file_path = "/tmp/messages.txt";
    
    sub clearFile {
        #
        # Clear file.
        # uses $file_path
        #
        open(my $cfh, '>', $file_path) or die "Cannot open file for writing: $!";
        print $cfh '';
        close $cfh;
        }
    
    sub myReadFromToFile {
        #
        # Uses $file_path
        #
        open(my $fh, '<', $file_path) or die "Can't open file: $!";
        $fh->autoflush(1);
    
        open(my $lock_fh, '>>', $file_path) or die "Can't open lock file: $!";
        flock($lock_fh, LOCK_SH);
        my @lines;
        while (my $line = <$fh>) {
            chomp($line);
            # print "Received message: $line\n";
            push (@lines, $line);
        };
        clearFile() if @lines;
        print "Received message: @lines\n";
        close($lock_fh);
    
        close($fh);
    }
    
    while (1) {
        myReadFromToFile();
        sleep(1);
    }


<a id="orgd91d177"></a>

# Date and Time

    use POSIX qw(strftime);
    
    $datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
    print("$datestring\n");
    
    $datestring = strftime "%F %R", localtime;
    print("$datestring\n");

    Sun Apr 21 18:27:42 2024
    2024-04-21 18:27


<a id="orgeac0d5a"></a>

# documentation style

-   <https://perldoc.perl.org/perldocstyle>
-   comment in ine line # before or after line
-   comment in 3 lines after subroutine definition


<a id="org948826b"></a>

# code style

<https://www.tutorialspoint.com/perl/perl_coding_standard.htm>

-   4 char indentation
-   Opening curly on same line as keyword, if possible, otherwise line up.
-   Space before the opening curly of a multi-line BLOCK.
-   One-line BLOCK may be put on one line, including curlies.
-   No space before the semicolon.
-   Space around most operators.
-   No space between function name and its opening parenthesis.
-   Space after each comma.

good

    print "Starting analysis\n" if $verbose;

bad

    $verbose && print "Starting analysis\n";

good

    open(FOO,$foo) || die "Can't open $foo: $!";

