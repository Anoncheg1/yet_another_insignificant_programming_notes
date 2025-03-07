
# Table of Contents

1.  [install debian](#orgb3c163b)
2.  [sources only](#org74be672)
3.  [install go from sources](#org261a015)
    1.  [test](#org5662e9c)

;-**- mode: Org; fill-column: 110;-**-


<a id="orgb3c163b"></a>

# install debian

-   check OS version: cat /etc/\*-release ;  lsb<sub>release</sub> -a
-   check version <https://packages.debian.org/search?keywords=golang>
-   apt install golang


<a id="org74be672"></a>

# sources only

Go's dependency management is source-based - fetched directly from their version control repositories rather
than from a binary repository.

Commands like go get and go mod tidy ensure that dependencies are fetched and built from source. The **go mod
tidy** command, in particular, cleans up unused dependencies and ensures that only necessary packages are
included in the build[2][3][4].

Go Modules - contains checksums of the dependencies.


<a id="org261a015"></a>

# install go from sources

<https://go.dev/doc/install/source>

-   wget <https://dl.google.com/go/go1.13.linux-amd64.tar.gz>  or <https://github.com/golang/go/tags>
-   sha256sum go1.13.linux-amd64.tar.gz
-   compare with <https://golang.org/dl/> or <https://go.dev/dl/>
    -   diff <(sha256sum go1.22.2.tar.gz ) <(echo "14b6790132eb63a02be3a33f556028dbe33c4d923df099976de8bd02be232be7  go1.22.2.tar.gz")
-   sudo tar -C /usr/local -xzf go1.13.linux-amd64.tar.gz
-   to build Go required.
-   cd src
-   ./all.bash
-   echo $PATH | grep "*usr/local/src/go-go1.18.9/bin*" # to check
-   apt remove golang
-   apt autoremove
-   go version # to check


<a id="org5662e9c"></a>

## test

Create a file named hello.go and put the following program in it:

    package main
    
    import "fmt"
    
    func main() {
    	fmt.Printf("hello, world\n")
    }

Then run it with the go tool:

    go run /tmp/hello.go

