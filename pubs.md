---
title: Papers & Talks
---

Papers I 've worked on (alone or as joint work).


# Compilation to Quantum Circuits for a Language with Quantum Data and Control

Authors: Yannis Rouselakis, Nikolaos S. Papaspyrou, Yiannis Tsiouris, and Eneia
         N. Todoran

Federated Conference on Computer Science and Information Systems (FedCSIS),
Krakow - Poland, 8-11 Sept. 2013

## Abstract

In this paper we further investigate nQML, a functional quantum programming
language that follows the ``quantum data and control” paradigm. We define a
semantics for nQML, which translates programs to quantum circuits in the
category FQC of finite quantum computations, following the approach of Altenkirch
and Grattage’s QML. This semantics, which coincides with the denotational
semantics for nQML over density matrices and unitary transformations, serves as a
compiler from nQML programs to quantum circuits. We also provide an
implementation of this compiler, written in Haskell, as well as an interpreter
for quantum circuits.

[ [PDF] ](files/fedcsis-rouselakis.pdf) [ [Slides] ](files/rouselakis-2013-cqclqdc-slides.pdf) [ Bib ] [ Website ]

# A Scalability Benchmark Suite for Erlang/OTP

Authors: Stavros Aronis, Nikolaos Papaspyrou, Katerina Roukounaki, Konstantinos
         Sagonas, Yiannis Tsiouris, and Ioannis E. Venetis

Eleventh ACM SIGPLAN Erlang Workshop, Copenhagen - Denmark, September 2012

## Abstract

Programming language implementers rely heavily on benchmarking for measuring and
understanding performance of algorithms, architectural designs, and trade-offs
between alternative implementations of compilers, runtime systems, and virtual
machine components. Given this fact, it seems a bit ironic that it is often more
difficult to come up with a good benchmark suite than a good implementation of a
programming language.

This paper presents the main aspects of the design and the current status of a
(soon-to-be) publicly available scalability benchmark suite for applications
written in Erlang, using the Erlang/OTP system in particular. In contrast to
other benchmark suites, which are usually designed to report a particular
performance point, our benchmark suite aims to assess *scalability*, i.e., to
study how an application's performance changes when additional resources
(e.g. CPU cores, schedulers, etc.) are added, using series of performance
points. We describe the scalability dimensions that the suite aims to measure
and present its infrastructure and current set of benchmarks. We also report
some limited set of performance results in order to show the capabilities of our
suite.

[ [PDF] ](files/erlang01-aronis.pdf) [ [Bib] ](files/erlang01-aronis.bib)
[ [Slides] ](files/bencherl-presentation.pdf) [ [Website] ](http://www.softlab.ntua.gr/release/bencherl)


# ErLLVM: An LLVM Backend for Erlang

Authors: Konstantinos Sagonas, Chris Stavrakakis, and Yiannis Tsiouris

Eleventh ACM SIGPLAN Erlang Workshop, Copenhagen - Denmark, September 2012

## Abstract

This paper describes ErLLVM, a new backend for the HiPE compiler, the native
code compiler of Erlang/OTP, that targets the LLVM compiler
infrastructure. Besides presenting the overall architecture and integration of
ErLLVM in Erlang/OTP, we describe the changes to LLVM that ErLLVM required and
discuss technical challenges and decisions we took. Finally, we provide a
detailed performance evaluation of ErLLVM compared to BEAM, the existing
backends of the HiPE compiler, and Erjang.

[ [PDF] ](files/erlang03-sagonas.pdf) [ [Bib] ](files/erlang03-sagonas.bib)
[ [Slides] ](files/ErLLVM.pdf) [ [Website] ](http://erllvm.softlab.ntua.gr)


# Design and implementation of a Low Level Virtual Machine back end for the High Performance Erlang native code compiler

Authors: Christos Stavrakakis, and Yiannis Tsiouris

**Diploma thesis**, Electrical and Computer Engineering Dept., National
  Technical University of Athens - GR, November 2011

## Abstract

Existing open-source compilers are based on old code generation technology, with
code bases that are difficult to learn and hard to change, and share no code
between each other. The Low Level Virtual Machine (LLVM) is a state-of-the-art
compiler infrastructure providing a set of reusable components that implement
the best known techniques focusing on compile time and performance of the
generated code. The goal of LLVM is to provide modular components for building
high quality compilers for many different languages.

This thesis describes the current architecture, design decisions and
implementation details of a new back end for HiPE, the native code compiler of
Erlang/OTP, that targets the LLVM infrastructure. One of HiPE's intermediate
representation, called Register Transfer Language (RTL), was found to have a
very straightforward translation to LLVM assembly. However, there were a few
subtle points, such as the calling convention, the exception handling mechanism
and the garbage collection, that needed to be handled in order to retain
Application Binary Interface (ABI) compatibility with the Erlang Run-Time System
(ERTS) and integrate our work in the existing Virtual Machine architecture. For
these reasons we patched the LLVM Code Generator and imposed the appropriate
rules on the generated binary code.

In the evaluation we detail the current complexity and performance of the new
LLVM back end for the AMD64 architecture. The run-time performance was found to
be comparable with HiPE and signifficantly faster than BEAM virtual machine and
Erjang, a virtual machine for Erlang based on the Java Virtual Machine
(JVM). The complexity of the LLVM back end proved to be far simpler; especially,
if you take into consideration that, with rather plain extensions, it can
support all hardware architectures that HiPE currently targets. Various
performance improvements are planned for future work.

[ [PDF] ](files/erllvm_thesis.pdf) [ [Bib] ](files/erllvm.bib)
[ [Slides] ](files/erllvm_pres-20111107.pdf) [ [Website] ](http://erllvm.softlab.ntua.gr/)
