(*
#
# THE BASICS
#
*)


(* Comments are done like this *)

(* This is a single character *)
#"f";

(* This is a string *)
"kek";

~1 + 1;

(* Basic conditional *)
if 1 < 2 then 69 else 420;


val fug = 420;
val fug = "kek";

(* Tuples don't have to be the same type *)
val tup = (1, #"g", "kek");
(* Accesses look a little weird tbh *)
#1(tup);

(* must be the same type in a list *)
val list = [1,2,3];

(* Accessing the head and tail *) 
hd(list);
tl(list);

val concat_2_lists = [1,2]@[3,4];

(* Put an element at the front of a list *)
2::[3,4];


(* Take heed! If then else are not regular conditionals, they are ternary operators! *)
(* You can't have shit like this: if 1 > 0 then "fuck"; it's gotta be the full deal *)
if 1 > 0 then "fuck" else "Nah";



(*
#
# FUNCTIONS!
#
*)

(* Note how we don't have to declare the parameter types; they are deduced *)
fun muh_function input = 
        if input = 0 then 69 else 420;

(* Applications of functions can be done with out without parentheses *)
muh_function 1;
muh_function(1);


(* Let's say we want a function that will square reals. Note, that SML defaults to integers *)
(* So we have to force one of our free occurences *)
fun square(x) = (x:real) * x; (* Note the parens in there, due to the colon operator being low priority *)


(* OK, multiple parameters *)
fun max_of_3(a:int,b:int,c:int) = 
    if a > b then
        if b > c then a
        else c
    else
        if b > c then b else c;


(* Weird behaviour about external variables
    When you reference them in a function, they remain as they were at that time of definition *)

(* Wow take note, the parens are even necessary on the parameters.
    I was getting errors without parens because that actually specifies the result type *)
val kek = "This is a string right now, so the func will use this always regardless of redefinition";
fun hello(whatever:int)= 
    if whatever < 10 then kek else "hmm";
val kek = 69;
"Test here";
hello(1);
