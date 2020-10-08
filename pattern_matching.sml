(* 
Wow so pattern matching is pretty cool.
We define the patterns that we match, and its respective output.
The appropriate variables take on the appropriate values. Very cool!

- Note that we can match on a ton of shit, like lists and tuples as well 
*)

fun 
    reverse(nil) = nil
|   reverse(head::rest) = reverse(rest) @ [head];


reverse([1,2,3]);


(* 
You can get pretty retarded with it honestly.
In this example, you can have the parameter given a name, and then identifiers 
matched based on pattern as well
*)

fun 
    reverse(nil) = nil
|   reverse(FUCK as head::rest) = reverse(rest) @ [head]; (*We could use FUCK if we wanted *)


reverse([1,2,3]);

(* Wildcards *)

fun whatever(_) = 1; (* Interesting that this works, I guess the type never matters *)
whatever("kek");


