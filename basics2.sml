(* YEAH OK IDK WHY THIS DOESN'T WORK
(* We can declare a temporary scope *)
fun cube(x:real) = 
    let
        square = x*x;
    in
        square * x;
    end;
cube(3);
*)

(*
Non-trivial printing

print("stuff") has a return type of "unit" (no really its called unit)
It's often necessary to print multiple things at a time, so let's take a look
*)

(* It looks weird, the parens are a indicating a list of expressions. This evaluates to the
return value/type of the final statement executed in the list *)

fun 
    print_list(nil) = ()
|   print_list(head::tail) = (print(Int.toString(head)); print("\n"); print_list(tail));

print_list([1,2,4]);



