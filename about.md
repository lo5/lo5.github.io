# About

![El P](img/hero.jpg)

I work at the intersection of computing and design to explore and invent new ways of interacting with information. I author software that makes it simple, fast, fun and easy to discover, interpret and communicate patterns in data.

I am interested in:

- High-performance graphics, real-time information visualization, data visualization, visual analytics and self-service decision support systems.
- Research and development of novel HCI techniques for interactive exploration and analysis of large-scale data.
- Patterns, practices and programming strategies for building robust, large-scale, highly interactive analytical systems.
- Symbolic computing, interactive computing, distributed systems, compilers and DSLs.

## Programming Languages

I like tinkering with programming languages.

- **Actively using** [Go](https://golang.org/), [Python](https://www.python.org/), [Typescript](https://www.typescriptlang.org/).
- **Currently learning** [Zig](https://ziglang.org/).
- **Used in the past** [ActionScript](https://en.wikipedia.org/wiki/ActionScript) (Flash, Flex), [C](http://www.open-std.org/jtc1/sc22/wg14/), [C#](https://docs.microsoft.com/en-us/dotnet/csharp/) (WinForms, WPF, Silverlight, ASP.NET), [C++](https://isocpp.org/) (VC++, MFC), [CoffeeScript](https://coffeescript.org/), [F#](https://fsharp.org/), [Java](https://www.jwz.org/doc/java.html) (J2EE, Swing, AWT), [Javascript](https://developer.mozilla.org/en-US/docs/Web/JavaScript) / [Node.js](https://nodejs.org/en/), [Lisp](http://www.paulgraham.com/rootsoflisp.html), [OCaml](https://ocaml.org/), [PHP](https://www.php.net/), [Perl](https://www.perl.org/), [Ruby](https://www.ruby-lang.org/en/), [Rust](https://www.rust-lang.org/), [Visual Basic](https://en.wikipedia.org/wiki/Visual_Basic).
- **Planning to learn** [J](https://www.jsoftware.com/#/), [Nim](https://nim-lang.org/), [Erlang](https://www.erlang.org/) and [Red](https://www.red-lang.org/).
- **Fascinated by** [Postscript](https://en.wikipedia.org/wiki/PostScript), [Forth](https://forth-standard.org/), [Joy](http://joy-lang.org/), [K and Q](https://code.kx.com/q/learn/startingkdb/language/).
- **Hacking on** [Zero](https://zero-lang.org/) - a browser-based [concatenative](https://concatenative.org/) interactive graphics language that I hope to release some day.

Of all the languages I've used, I'm most excited about [Zig](https://ziglang.org/). [Sponsor it!](https://github.com/sponsors/ziglang).

Zig doesn't have garbage collection, classical OO (classes, inheritance, constructors, destructors, other footguns), RAII, protocols/interfaces, closures, generics, runtime polymorphism, operator/function overloading, checked exceptions or macros.

Instead, it's a small, beautiful language, with pointer arithmetic, manual memory management, optional values, errors-as-values, structs-as-namespaces, simple syntactic constructs for deferred execution, and the elegant [comptime](https://kristoff.it/blog/what-is-zig-comptime/). It's the industrial-grade C replacement I've been looking for, and I foresee a bright future for it. Hats off to Andrew Kelley and Zig contributors!

## Work

I've founded or been an early engineer in three startups.

I currently work at [H2O.ai](https://h2o.ai) (Mountain View, California) as Chief of Technology, a fancy title for "mostly programmer, programming" (10,000+ commits in Github since March 2014).

I lead the development of **[H2O Wave](https://www.h2o.ai/products/h2o-wave/)**, an open-source analytical decision-support platform that involves several interesting technologies including real-time information visualization, search-driven exploratory data analysis, information retrieval and augmented analytics. H2O Wave has a novel language-agnostic rapid application development system for authoring interactive real-time information displays and applications.

I consider myself incredibly fortunate to be working with some of the [smartest](https://youtu.be/xAhWaveAYV5_PY?t=23) [people](https://twitter.com/CrunchingData/status/1187627135952769029) in machine learning, including [Leland Wilkinson](https://en.wikipedia.org/wiki/Leland_Wilkinson) of [Grammar of Graphics](https://www.springer.com/gp/book/9780387245447) fame, and hacker extraordinaire [Cliff Click](https://www.infoq.com/profile/Cliff-Click/), who have been a constant source of inspiration for almost everything I've done over the past decade.

In the past, I have been responsible for:

- **[Driverless AI](https://www.h2o.ai/products/h2o-driverless-ai/)** - H2O.ai's flagship automatic machine learning platform.
- **Driverless AI for Excel** - A native add-in for automatic machine learning in Microsoft Excel.
- **[Flow](https://github.com/h2oai/h2o-flow)** - a [hybrid GUI + REPL](https://www.h2o.ai/blog/introducing-flow/) environment for exploratory data analysis and machine learning. You can see it in action [here](https://www.youtube.com/results?search_query=h2o+flow). There is also a [book](https://www.oreilly.com/library/view/practical-machine-learning/9781491964590/) about it.
- **[Steam](http://docs.h2o.ai/steam/latest-stable/index.html)** - a platform for cluster management, experiment hosting/execution, model management and model deployment.
- **Echo** - a real-time dashboard system (folded into H2O Wave).
- **Flux** - a rapid application development system (folded into H2O Wave).
- **[H2O.js](https://github.com/h2oai/h2o.js)** - a Javascript-to-Rapids transpiler for executing a subset of Javascript on H2O for machine learning at scale.
- **[Lightning](https://github.com/h2oai/lightning)** - Statistical graphics library for browsers.
- **[Play](http://play.h2o.ai/)** - On-demand H2O cloud provisioning and management on AWS.
- **H2O Excel Add-in** - Predictive array-formulae for spreadsheet data.


Previously in 2010, I founded [Plot.io](https://twitter.com/plot_io), a web-based interactive visual analytics system based on Leland Wilkinson's [Grammar of Graphics](https://www.springer.com/gp/book/9780387245447). You can see it in action [here](https://www.youtube.com/playlist?list=PLuJkLL3TgZXYRDcRxKL-Z0FFUEUmAs0US).

I was especially proud of the front-end, which was originally authored in a custom Lisp dialect, transpiled to Coffeescript, then Javascript. The programming paradigm was inspired by [Flapjax](https://www.flapjax-lang.org/), based on [functional reactive programming](https://wiki.haskell.org/Functional_Reactive_Programming) and [flow-based programming](https://en.wikipedia.org/wiki/Flow-based_programming), long before Elm or React/Redux were a thing. The entire user interface and visualization/rendering library minified down to ~150KB, a fourth of the size of the average web page back in 2010.

Plot.io was acquired by [Platfora](https://platfora.com/) in 2012, which in turn was acquired by [Workday](https://www.workday.com/) in 2016. The product is currently called [Prism](https://www.workday.com/en-us/products/analytics-reporting/overview.html).

Previously I used to be in technology consulting with 3Com, Abbott, Aon, Astra Zeneca, Elan, Genworth Financial, Glaxo SmithKline, Healthways, Herbalife, Metlife, Northwestern Mutual, Pfizer, Sun Microsystems and XL Re, via Infosys.


## Patents

- [Evolved Machine Learning Models](https://patents.google.com/patent/US20190295000A1/en?oq=USPTO+16%2f287%2c189) - (Pending) Feb 27, 2019
- [Systems and methods for interest-driven data visualization systems utilizing visualization image data and trellised visualizations](https://patents.google.com/patent/US9934299B2/en?oq=US9934299B2) - Apr 3, 2018
- [Systems and methods for interest-driven data visualization systems utilized in interest-driven business intelligence systems](https://patents.google.com/patent/US9824127B2/en?oq=US9824127B2) - Nov 21, 2017

