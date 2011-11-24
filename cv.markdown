---
title: Curriculum Vitae
---

This is a work in progress.


Currently, I am a Ph.D. student in the [Software Engineering
Laboratory](http://www.softlab.ntua.gr/) at NTUA advised by Associate Professor
[Kostis Sagonas](http://user.it.uu.se/~kostis). My primary research interests
are in the fields of Programming Languages Theory and Implementation. More
precisely:

* functional programming languages
* concurrent and parallel programming
* program analysis, type systems, security

You can grab a PDF version of this CV from [here](../files/Yiannis-Tsiouris-CV.pdf).

# Education

* National Technical University of Athens: Ph.D. student in School of Electrical
  and Computer Engineering.(*November 2011 - present*)
* National Technical University of Athens: Diploma of Electrical and Computer
  Engineering, specialization in Computer Science (GPA: 8.78/10.00). (*September
  2006 - October 2011*)
* Secondary School: 4th Lyceum of Larissa (GPA: 19.4/20). (*September 2003 -
  June 2006*)


# Publications

* Christos Stavrakakis, Yiannis Tsiouris, "**Design and implementation of a Low
  Level Virtual Machine for the High Performance Erlang native code compiler**",
  Diploma thesis, NTUA, 2011. [ [PDF] ](../files/erllvm_thesis.pdf) [ [Abstract]
  ](../files/erllvm_abstract.pdf) [ [Bib] ](../files/erllvm.bib)

* Christos Stavrakakis, Yiannis Tsiouris, "**ErLLVM: An LLVM back-end for HiPE,
  the native code compiler of Erlang/OTP. *Design and Implementation* **", Slides,
  NTUA, 2011. [ [PDF] ](../files/erllvm_pres-20111107.pdf)


# Projects

* **[ErLLVM](http://erllvm.softlab.ntua.gr)**: A project aiming at providing
    multiple back ends for High Performance Erlang
    ([HiPE](http://www.it.uu.se/research/group/hipe/), the native code compiler
    of the Erlang/OTP system, with the use of the Low Level Virtual Machine
    ([LLVM](http://llvm.org/)) infrastructure.

* **[RELEASE: A High-level Paradigm for Reliable Large-scale Server
    Software](http://www.release-project.eu/)** is an EU FP7 STREP (287510) that
    aims to scale the radical concurrency-oriented programming paradigm to build
    reliable general-purpose software, such as server-based systems, on
    massively parallel machines (100 000 cores). Project partners include
    Heriot-Watt, Ericsson, Uppsala Universitet, Kent University, Erlang
    Solutions Ltd., National Technical University of Athens, and EDF (France).

For more recent projects, you can take a look at my [Github
page](http://www.github.com/yiannist/ "Github").


### Undegraduate Projects

During my studies in School of Electrical and Computer Engineering at NTUA I
have implemented many projects (on my own or in collaboration with some
colleages) as part of various lessons.

Some of the most interesting ones (projects i enjoyed the most :) are listed
below:

* Implementation of a Compiler for Tony, a Python-like language (with semantics
  of call-by-reference, dynamically allocated types and garbage collection) in
  OCaml. Part of Compilers lesson. Source and language specification:
  [[source](/files/compiler.tar.gz "Tonyc")]

* Implementation of the [Hindley-Milner
  Algorithm](http://en.wikipedia.org/wiki/Type_inference "Type Inference") for
  simply typed λ-calculus in Haskell. Part of Programming Languages II
  lesson. [[source](/files/typeinf.tar.gz "Type Infererence")]

* Efficient implementation of the [Travelling Salesman Problem
  (TSP)](http://en.wikipedia.org/wiki/Travelling_salesman_problem "TSP")
  O(n^2^2^n^) algorithm in C. [[source](/files/tsp.tar.gz "TSP source")]

* Implementation of Database Management System (DBMS) in Python, Qt4 and
  PostgreSQL. Part of Database Systems lesson. [[source](/files/pydbms.tar.gz
  "Pydbms")] (*Greek*)

* A device driver for a virtual character serial device for the Linux Kernel.
  The driver is implemented as a kernel module. Part of Operating Systems
  Laboratory lesson. [[source](/files/lunix.tar.gz "Lunix")] and
  [[report](/files/lunix.pdf "Report")] (*Greek*)

* Design and implementation of an infrastructure to mark processeses that do not
  need files they own to be cached in memory. In that way, processes that need
  to be re-executed won't "stall" waiting for their files to be cached-in again
  (because they were forced to swap-out by other "marked" processed). The
  infrastructure is called "Curse" and is implemented as a kernel patch for
  2.6.37 Linux Kernel. Part of Operating Systems Laboratory
  Lesson. [design](/files/curse-design.pdf "Design"),
  [source](/files/curse.tar.gz "Curse"), [report](/files/curse-report.pdf
  "Report") (*Greek*)
