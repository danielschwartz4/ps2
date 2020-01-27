(* 
                         CS 51 Problem Set 2
                 Higher-Order Functional Programming
 *)

(*======================================================================
Before reading this code (or in tandem), read the problem set 2
writeup. It provides context and crucial information for completing
the problems.

Solve each problem in this part using List.map, List.fold_left,
List.fold_right, or List.filter. You are permitted to use other
functions from the List module. However, you should think about
whether they’re necessary and be mindful of their usage.

A solution, even a working one, that does not use one of these
higher-order functions will receive little or no credit. However, if
you can express your solution to a particular problem in terms
of another function from an earlier problem, you may do so.

You *may not* change the definition of these functions to make them
recursive.

........................................................................
Problem 1: The function "negate_all" flips the sign of each element
in a list. 
......................................................................*)

let negate_all (nums : int list) : int list = 
  failwith "negate_all not implemented" ;;

(*......................................................................
Problem 2: The function "sum" returns the sum of the elements in 
a list. 
......................................................................*)

let sum (nums : int list) : int =
  failwith "sum not implemented" ;;

(*......................................................................
Problem 3: The function "sum_rows" takes a list of "rows", each an 
int list and returns a one-dimensional list of ints. Each int in this list
is equal to the sum of the corresponding rows in the input. For example:

# sum_rows [[1; 2]; [3; 4]] ;;
- : int list = [3; 7] 
......................................................................*)

let sum_rows (rows : int list list) : int list =
  failwith "sum_rows not implemented" ;;

(*......................................................................
Problem 4: The function "filter_odd" retains only the odd numbers
from the given list. For example:

# filter_odd [1; 4; 5; -3] ;;
- : int list = [1; 5; -3]
......................................................................*)

let filter_odd (nums : int list) : int list =
  failwith "filter_odd not implemented" ;;

(*......................................................................
Problem 5: The function "num_occurs" returns the number of times a given
number appears in a list. For example:

# num_occurs 4 [1; 3; 4; 5; 4] ;;
- : int = 2
......................................................................*)

let num_occurs (n : int) (nums : int list) : int =
    failwith "num_occurs not implemented" ;;

(*......................................................................
Problem 6: The function "super_sum" sums all of the numbers in a list
of int lists. For example:

# super_sum [[1; 2; 3]; []; [5]] ;;
- : int = 11
......................................................................*)

let super_sum (nlists : int list list) : int =
  failwith "super_sum not implemented" ;;

(*......................................................................
Problem 7: The function "filter_range" takes a list lst and a pair
of integers defining lower and upper bounds on a range and returns a
list of numbers in the input list within the given range (inclusive), in
the same order they appeared in the input list. For example:

# filter_range [1; 3; 4; 5; 2] (1, 3) ;;
- : int list = [1; 3; 2]
# filter_range [1; 3; 4; 5; 2] (3, 2) ;;
- : int list = []

Note the last example, which shows what happens when the lower bound
is higher than the upper bound. In that case, no numbers can fall
within the range, and the result is the empty list.
......................................................................*)

let filter_range (nums : int list) (range : int * int) : int list =
  failwith "filter_range not implemented" ;;

(*......................................................................
Problem 8: The function "float_of_ints" converts an int list into 
a float list.
......................................................................*)

let floats_of_ints (nums : int list) : float list =
  failwith "floats_of_ints not implemented" ;;

(*......................................................................
Problem 9: The function "log10s" applies the log10 function to all
members of a list of floats. The function log10 is not defined for
numbers n <= 0, so undefined results should be None. For example:

# log10s [1.0; 10.0; -10.0] ;;
- : float option list = [Some 0.; Some 1.; None]
......................................................................*)

let log10s (lst : float list) : float option list =
  failwith "log10s not implemented" ;;

(*......................................................................
Problem 10: The function "deoptionalize" extracts values from a list 
of options. For example:

# deoptionalize [Some 3; None; Some 5; Some 10] ;;
- : 'a list = [3; 5; 10]
......................................................................*)

let deoptionalize (lst : 'a option list) : 'a list =
  failwith "deoptionalize not implemented" ;;

(*......................................................................
Problem 11: The function "some_sum" sums all of the numbers in a list 
of int options but ignores None values.
......................................................................*)

let some_sum (nums : int option list) : int =
  failwith "some_sum not implemented" ;;

(*......................................................................
Problem 12: The function "mult_odds" returns the product of all
of the odd elements of a list. For example:

# mult_odds [1; 3; 0; 2; -5] ;;
- : int = -15

NOTE: See the multiplicative identity 
(https://en.wikipedia.org/wiki/Identity_element#Definitions) 
to determine what to do in a certain edge case.
......................................................................*)

let mult_odds (nums : int list) : int =
  failwith "mult_odds not implemented" ;;

(*......................................................................
Problem 13: The function "concat" concatenates a list of lists. For
example:

# concat [[1; 2]; []; [3; 4; 5]; [6]] ;;
- : int list = [1; 2; 3; 4; 5; 6]
......................................................................*)

let concat (lists : 'a list list) : 'a list =
  failwith "concat not implemented" ;;

(*......................................................................
Problem 14: We begin by defining a type that represents a student 
as a tuple of the student's name and year. The function "filter_by_year"
returns the name of students in a given year. For example:

# let students = [("Joe", 2010); ("Bob", 2010); ("Tom", 2013)] ;;
val students : (string * int) list =
  [("Joe", 2010); ("Bob", 2010); ("Tom", 2013)]
# filter_by_year students 2010 = 
- : name list = ["Joe"; "Bob"]
......................................................................*)

type name = string
type year = int
type student = name * year

let filter_by_year (slist : student list) (yr : year) : name list =
  failwith "filter_by_year not implemented" ;;

(*======================================================================
Reflection on the problem set

After each problem set, we'll ask you to reflect on your experience.
We care about your responses and will use them to help guide us in
creating and improving future assignments.

........................................................................
Please give us an honest (if approximate) estimate of how long (in
minutes) this problem set took you to complete. 
......................................................................*)

let minutes_spent_on_pset () : int =
  failwith "time estimate not provided" ;;

(*......................................................................
It's worth reflecting on the work you did on this problem set, where
you ran into problems and how you ended up resolving them. What might
you have done in retrospect that would have allowed you to generate as
good a submission in less time? Please provide us your thoughts in the
string below.
......................................................................*)

let reflection () : string =
  "...your reflections here..." ;;
