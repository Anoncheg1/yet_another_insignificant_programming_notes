
# Table of Contents

1.  [philosophy](#org44fce17)
2.  [book https://rust-book.cs.brown.edu/](#org70eb16d)
3.  [book: Zero To Production In Rust](#orgeafa567)
4.  [cargo - package manager](#org96653f4)
    1.  [terms](#orge092b1b)
    2.  [install package:](#org5c1727e)
    3.  [dependencies in Cargo.toml](#orgc610670)
    4.  [cargo build - feature selection](#orge91e6b9)
    5.  [flags](#org985e599)
    6.  [HOWTO disable default in dependencies of dependencies](#org0a690b2)
5.  [Hello world](#orgfecbea2)

; -**- mode: Org ; fill-column: 110; eval: (hidepw-mode 1) -**-

-   <https://www.rust-lang.org/>
-   STD lib <https://doc.rust-lang.org/std/>
-   Environment Variables	<https://doc.rust-lang.org/cargo/reference/environment-variables.html>
-   The Cargo Book		<https://doc.rust-lang.org/cargo/index.html>
-   The rustc Book		<https://doc.rust-lang.org/rustc/what-is-rustc.html>
-   Codegen Options		<https://doc.rust-lang.org/rustc/codegen-options/index.html>


<a id="org44fce17"></a>

# philosophy

<https://gist.github.com/DarinM223/e7237114cfdcf3644f90>

-   Ownership (only one variable "owns" the data at one time, and the owner is in charge of deallocating)
-   Borrowing (you can borrow a reference to an owned variable)
-   Lifetimes (all data keeps track of when it will be destroyed)

**features**

-   all references point to valid memory. No garbage collector.
-   "borrow checker" tracks the object lifetime of all references in a program during compiling.
-   OOP: structs, enums, traits, and methods
-   fun. pr-ming: immutability, pure functions, higher order functions, and pattern matching.

**Ideas**

-   immutability
-   higher-order functions - functions is a first citizen (in arguments and as return value)
-   algebraic data types - tuples and records, enumes


<a id="org70eb16d"></a>

# book <https://rust-book.cs.brown.edu/>

<https://doc.rust-lang.org/stable/book/>


<a id="orgeafa567"></a>

# book: Zero To Production In Rust

-   www.zero2prod.com
-   <https://www.zero2prod.com/assets/sample_zero2prod.pdf>


<a id="org96653f4"></a>

# cargo - package manager


<a id="orge092b1b"></a>

## terms

**crate** - is the smallest unit of code that the compiler considers at a time.

-   **crate** is a library or executable program (rustc)
-   type of the crates: binary or library.
-   can be a single source file or a collection of files and modules.
-   Loosely, the term “crate” may refer to either the source code of the target or to the compiled artifact that
    the target produces. It may also refer to a compressed package fetched from a registry.
-   typically **root** -  a source file that defines the root module of the crate
    -   for binary:  `src/main.rs`
    -   for library: `src/lib.rs`

**package** - A package is a collection of source files and a Cargo.toml manifest file and Cargo.lock.

-   contains multiple targets, each of which is a “crate”.
-   Cargo.toml - dependencies and desired versions
-   Cargo.lock - record actual versions

steps:

1.  get package, ex. `git clone https://github.com/rust-lang/regex.git`
2.  build and download dependencies with cargo: `cargo build`
    -   fetch the new dependencies and all of their dependencies, compile them all, and update the Cargo.lock

**crates.io** is the Rust community’s central package registry.


<a id="org5c1727e"></a>

## install package:

    cargo install some-package

-   create ~/.cargo/ folder


<a id="orgc610670"></a>

## dependencies in Cargo.toml

    [dependencies]
    foo = { version = "1.0", optional = true }
    [build-dependencies]
    bar = { version = "1.0", optional = true }
    [target."...".dependencies]
    [target.'cfg(windows)'.dependencies]
    [target.'cfg(target_arch = "x86_64")'.dependencies]


<a id="orge91e6b9"></a>

## cargo build - feature selection

&#x2013;bin <binfile> build only specified target binary.

features in Cargo.toml - is optional dependencies

ex. Cargo.toml

    [dependencies]
    indoc = { version = "2.0.1", optional = true }
    chrono-tz = { version = ">= 0.6, < 0.10", default-features = false, optional = true }
    
    [features]
    default = ["feature1", "feature2"]
    macros = ["pyo3-macros", "indoc", "unindent"]

"indoc" - can be a dependency or another feature

**Default features** are a convenience that make it easier to use a package without forcing the user to
 carefully select which features to enable for common use, but there are some drawbacks. Dependencies
 automatically enable default features unless default-features = false is specified. This can make it
 difficult to ensure that the default features are not enabled, especially for a dependency that appears
 multiple times in the dependency graph. Every package must ensure that default-features = false is specified
 to avoid enabling them.

&#x2013;no-default-features - disable build default features for selected packages

Global Disable Not Supported: As of now, Cargo does not support a global option to disable default features
 for all dependencies simultaneously. You must specify this option for each dependency individually.

-   workaround is to modify Cargo.toml per-dependency, specify the `default-features = false` option.

<https://doc.rust-lang.org/cargo/reference/features.html#command-line-feature-options>


<a id="org985e599"></a>

## flags

<https://doc.rust-lang.org/cargo/reference/config.html#buildrustflags>


<a id="org0a690b2"></a>

## HOWTO disable default in dependencies of dependencies

    for f in /tmp/gentoo/* ; do
        cat sed -i -z -E 's/default = \[[^]]*\]/default = \[\]/g' "$f"/Cargo.toml
    done

    for f in /tmp/gentoo/* ; do
        cat $f/Cargo.toml | sed -z -E 's/default = \[[^]]*\]/default = \[\]/g' | grep 'default ='
    done

    # for f in /tmp/gentoo/serde-1.0.197 ; do
    cat /tmp/gentoo/serde-1.0.197/Cargo.toml | sed -z -E 's/default = \[[^]]*\]/default = \[\]/g'
    # done


<a id="orgfecbea2"></a>

# Hello world

    fn main() {
        println!("Hello, World!");
    }

    rustc main.rs
    ./main

println! calls a Rust macro.

