(* OK easy mode first *)
type muh_t = int list; 
val kek:int list = [1,2,3]; (* OK we are specifying this type *)
val fug:muh_t = [4,5,6];

kek@fug; (* OK cool, it worked *)



(* tuple types *)
(* OK so it looks weird but we're just saying that 'thing' is a list of tuples in the
    form of (int, int). We specify that with (int * int)
*)
val thing:((int * int) list) = [(1,1)];





(* Parameterized Type Definitions *)
type ('domain, 'range) muh_mapping_t = ('domain * 'range) list; (* just tuple type here *)


val list_of_muh_mappings = [("fuck", 1), ("kek", 420)] : (string, int) muh_mapping_t;


(* Dataconstructors *)
(* Begins on page 199 *)
(*
    So my understanding is that dataconstructors are kinda like c++ constructors. You
    are initializing a type.
*)


(* This is from slides, not sure what it means *)
datatype value = IV of int | BV of bool;


(* Basically an enum *)
datatype signal = red | green | yellow; (* It's an enum *)
val x=red;
x=red; (* Evals to true *)


(* Advanced data constructors *)
(*
datatype (<list of type parameters>) <datatype identifier> =
    <First constructor expression>  |
    <Second constructor expression> |
    ...                             |
    <Last constructor expression>

Constructor expressions consist of '<constructor name> of <type expression>'
*)


(* An example, "unions" *)
(* We want to represent elements which may either be a single element or a pair of elements *)
(* Note, this fucker is always of type a,b even if it's a single element*)
datatype ('a, 'b) element =       
    P of 'a * 'b | 
    S of 'a;     

val kek = P("kek", 420);
val jej = S("lel");

(* OK so this works. I'm thinking functions can only take in one datatype? *)
fun kek(S(x)) = 1
|   kek(P(x,y)) = 2;


(*fun lel(x:((real)list) = 0;*)

fun lel(s) = s+s;
lel(10);
lel( [1] );

(* OK so this is my own spin on datatypes. We are basically creating overloads *)
datatype muh_overload = muh_int of int | muh_string of string;

val jej = muh_int(13);
val kek = muh_string("juj");


fun muh_overloaded_func(muh_int(A)) = 13
|   muh_overloaded_func(muh_string(A)) = 14;

muh_overloaded_func(jej);
muh_overloaded_func(kek);
