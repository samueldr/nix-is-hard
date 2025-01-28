syscalls, in my Nix?
====================

No, not really. But too close for comfort, too.

This set of expression allows producing binaries for some platforms, directly from the Nix expression.

These binaries are useful as building blocks for a sort of bootstrap, or as an exercise in futility.

With these expressions, building some higher level abstractions that produce *complex outputs* is possible.


Okay, but why this instead of bundling binaries?
------------------------------------------------

After all, it's kind of like having a binary, but with more steps, right?

Well, morally yes. In practice, this is a bit more subtle.

The way it's been built, a set of *higher order functions* allows pasting useful bits to build programs, in a much more agnostic way than if they had been authored using assembly.

In a weird way, this is closer to a "syscall-oriented assembly", than pure assembly.

What does that mean?

That a lot of the hard parts of writing assembly are waved away.

The syscall ABI is handled transparently.
Even between the different platforms.

What you're left with, is a way to paste syscalls together into useful building blocks.


What can I do with this?
------------------------

The simplest useful thing this allows is building a single-purpose binary that does one syscall.

In turn, that syscall allows building higher level semantics.

Why is this useful?
Think about the build sandbox with a bare `derivation {}`.

There's nothing but a `busybox sh` in there.
There's no `chmod`, no `cp`, so there's no way to get an executable binary from a bare `derivation {}` without involving a binary seed.

Well, with these expressions, your binary seed is easier to reason about,
*and* a chunk of the architecture-specific details are handled for you.



* * *

Rough edges
-----------

### Incomplete unsigned 64 bit integers

Nix uses 64 bit signed integers for numbers.

We don't have the ability to *represent* numbers with the most significant bit set as unsigned.

Either use the negative equivalent representation (for constants as numbers), or implement directly as bytes (a list of 0~255 integers).
