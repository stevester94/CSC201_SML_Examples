(* OK still getting a bit confused on functions *)

(* This will work for any type we throw at it *)
fun lel(s) = 0;
lel(2);
lel(#"k");

(* We can specify the type like this *)
fun lel(s:int) = 3;
(* This fails *)
(*lel("kek"); *)

(* NOTE, we can't overload functions like this

fun lel(s:int) = 0
|   lel(s:string) = 2;

*)


