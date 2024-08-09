+++
title = "Functional Programmingers Building Silos, One Abstraction at a Time"
date = 2024-01-12T11:58:10+01:00
draft = true
categories = [
	"functional programming",
	"culture",
	"community",
]
+++

Hear me out! Functional programming is and will always lag behind the more
mainstream language communities. I have an idea why.  <!--more-->

## Who Are You To Judge?

Let me start by saying that my programmer upbringing was kind of unusual. I
stumbled upon computer science and programming by accident: No whiz kid teenage
programmer, basically no programming skills before university. There, I was
first introduced to programming via the [Racket
language](https://racket-lang.org/). While I did my fair share of C and C++
doing the usual stuff (systems programming, shitty ray-tracers), I quickly
drifted off into functional programming full time, using
[Haskell](https://www.haskell.org/) for my bachelor thesis and
[Clojure](https://clojure.org/) for my master thesis. Which landed me a job I'm
greatful for -- it allows me to use functional programming exclusively.

This obviously left its marks on me. While I have a working understanding of
procedural and object oriented programming, my native language is FP. Most
importantly: This really shapes my view on programming techniques and languages,
a languages library ecosystem and styles that are popular at certain times.

Being a native FP-speaker has its good parts. When React came out, the only
thing I wondered was _when are we going more functional_
([useState](https://react.dev/reference/react/useState) and then [useEffect in
React](https://react.dev/reference/react/useEffect), etc.). [Functional Reactive
Programming (FRP)](http://conal.net/papers/ActiveVRML/) was right there, wasn't
it? Java streams were just _the right thing to do_. Monadic programming models
in disguise (_LINQ_ in .dotnet, many many process abstractions everywhere) seem
like quite a natural way of expressing sequential computations to me.

## Functional Programming in the "Industry"

I am pretty convinced that many techniques from the functional style are helpful
and useful in a procedural or object oriented setting. Many things already made
their way into more main-stream languages/libraries/frameworks

- processing pipelines using functions such as `map`, `filter`, `fold`, `take`,
  etc.
- immutability as a default seems to become more popular
- data modelling using "algebraic data types" and pattern-matching (Rust or
  Swift enums, Java Records Patterns, ...)
- errors as values as opposed to opaque exceptions are becoming the default in
  new languages (Rust, Go, ...)
- optional values instead of `null`
- declarative programming

I'm happy those things landed in the mainstream. It shows that there are
**some** good ideas here. Some of these ideas get translated into new things
("Ports and Adapters", "Functional Core, Imperative Shell", ...), which is a
good thing. And many people seem to thing the same and are pushing for more
functional programming inspired features in their languages/frameworks (have you
_seen_ PHP8 getting union types??). So what is my problem?

## Let The Nerds Play

Functional programmers are huge nerds. Which is a good thing! Many influential
ideas are made possible -- or more accurately, made more likely, since we cannot
know if they would have happened anyway -- by functional programming being a
space open to new ideas and constantly unhappy with the status quo.

I find it hard to believe that is is by accident that many of those ideas
originate from academic "research"[^1]. Many solutions functional programmers
come up with solve problems very specific to their research. Haskells _Monads_
are a solution to a problem noone ever had before Haskell was a thing. Still, it
turns out to be a useful abstraction in other areas as well (Microsofts
[LINQ](https://learn.microsoft.com/en-us/dotnet/csharp/linq/) being one of the
more prominent examples). Is it better than not using the monad pattern? No. At
least there is zero evidence (as in scientific evidence), that monads ever
solved a problem _better_[^2] than the alternative. What you will find is people
arguing from anecdotal evidence that it is somehow _better_ (which I tend
believe but am not shy to admit that is is very likely just a preference and a
habit of mine).

Why do I bring this up? From my experience, functional programming in its purest
form does not translate well into the industry -- but not for technical reasons.

## Building Silos, One Abstraction at a Time

Functional programming is uniquely qualified to produce knowledge silos[^3]. Let
us start with some anecdotal evidence:

### Haskells Library Ecosystem is a Clusterfuck

Have you ever tried to compile a Haskell project that is more than three months
old? For anyone who is not a real Haskell and GHC expert, it is practically
impossible. Yes, there are boring technical reasons projects won't compile after
a while. But there are also non-technical reasons.

Many Haskell projects start with the question "Which effect system will I
use?"[^4]. I'll spare you the unneccessary details, but suffice it to say there are
a lot and most of them are incompatible. 


[^1]: "Research" in quotes, because computer science still tries to avoid being
    a natural science at all cost. The related rant might warrant its own post
    at some point.
[^2]: Again, since computer science avoids to define anything in a really tacit
    way, we wouldn't even know if something is "better" than something else.
[^3]: Thanks to a discussion with a good friend who convinced me, I would also
    consider very low-level programming as qualified for what comes next.
[^4]: If you are living in a sane world, maybe you'll ask yourself why this is
    necessary. Trust me, don't ask. It is not a real problem but a problem made
		by Haskellers for Haskellers.
