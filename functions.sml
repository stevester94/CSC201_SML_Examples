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

(*

Alright so we can do fancy bullshit like this.

*)

(* Note that we get a warning that this is not exahustive *)
(* Wow, that's actually pretty neat that this works *)
val is_one = fn
    1 => true
|   _ => false;

(* This is literally equivalent though *)
fun 
    is_one(1) = true
|   is_one(_) = false;

(* These work as expected when using either method *)
is_one(1); 
is_one(2);


(* If we get a bit trickier, and use recursion the rec keyword is required if we are going to do a recursive definition *)
val rec reverse = fn
    nil => nil
|   x::xs => reverse(xs) @ [x];


(* Anonymooose functions *)
(* Neato *)
(fn x => x+1)(3);

