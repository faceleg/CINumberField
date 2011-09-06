Why?
====
Although one may use NSNumberFormatter to achieve a similar result - what I don’t like about about that solution is this: 

*If a user types non-numeric characters into the NSTextField and attempts to tab away from the field, they get the default error sound and their tab attempt is denied.*

To me this isn’t user friendly.

I figured I’d take a Javascript-esque approach to the problem: when the user has finished interacting with the text field, reset it's content to the value returned by [input intValue].

Todo
====
+ add an example using NSNumberFormatter
+ add an extended example limiting range