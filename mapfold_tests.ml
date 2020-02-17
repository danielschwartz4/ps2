(*
                         CS 51 Problem Set 2
            Higher Order Functional Programming -- Testing
 *)


open Mapfold ;;

open Test_simple ;;      (* a really simple unit testing framework *)

let test () =
  unit_test ((negate_all []) = [])
            "negate_all empty";
  unit_test ((negate_all [1; -2; 0]) = [-1; 2; 0])
            "negate_all mixed";
  unit_test ((sum []) = 0)
            "sum empty";
  unit_test ((sum [1; 2; 3; 4]) = 10)
            "sum positive";
  unit_test ((sum [-1; -2; -3; -4]) = -10)
            "sum negative";
  unit_test ((sum_rows []) = [])
            "sum empty";
  unit_test ((sum_rows [[]; []]) = [])
            "sum empty empty";
  unit_test ((sum_rows [[1;2]; [3;4]]) = [])
            "sum full";
  unit_test ((filter_odd []) = [])
            "filter empty";
  unit_test ((filter_odd [1; 4; 5; -3]) = [])
            "filter even and odd and negative";
  unit_test ((filter_odd [2; 4; 6; 8]) = [])
            "filter only even";
  unit_test ((num_occurs 4 []) = 0)
            "num occurs empty";
  unit_test ((num_occurs 4 [1; 3; 4; 5; 4]) = 2)
            "filter has numbers";
  unit_test ((num_occurs 4 [1; 3; 7; 5; 8]) = 0)
            "filter num number";
  unit_test ((super_sum []) = 0)
            "super_sum empty";
  unit_test ((super_sum [[1; 2; 3]; []; [5]]) = 11)
            "super_sum with an empty";
  unit_test ((super_sum [[1; 2; 3]; [2]; [5]]) = 13)
            "super_sum full";
  unit_test ((filter_range [](2, 5)) = [])
            "filter_range empty";
  unit_test ((filter_range [1; 3; 4; 5; 2] (1, 3)) = [1; 3; 2])
            "filter_range full";
  unit_test ((filter_range [1; 3; 4; 5; 2] (3, 2)) = [])
            "filter_range reverse";
  unit_test ((floats_of_ints []) = [])
            "float int empty";
  unit_test ((floats_of_ints [1; 2; 3]) = [1.0; 2.0; 3.0])
            "float int full";
  unit_test ((log10s []) = [])
            "log empty";
  unit_test ((log10s [1.0; 10.0; -10.0]) = [Some 0.; Some 1.; None])
            "log full";
  unit_test ((deoptionalize []) = [])
           "deoptionalize empty";
  unit_test ((deoptionalize [Some 3; None; Some 5; Some 10]) = [3;5;10])
           "deoptionalize mixed";
  unit_test ((some_sum []) = 0)
           "some_sum empty";
  unit_test ((some_sum [Some 3; None; Some 5; Some 10]) = 18)
           "some_sum empty";
  unit_test ((mult_odds []) = 1)
           "multodds empty";
  unit_test ((mult_odds [1;3;0;2;-5]) = -15)
           "multodds mixed";
  unit_test ((concat [])=[])
           "concat empty";
  unit_test ((concat [[1; 2]; []; [3; 4; 5]; [6]]) = [1;2;3;4;5;6])
           "coincat mixed";
  unit_test ((filter_by_year [] 2010) = [])
           "filter by year empty";
  unit_test ((filter_by_year [("Joe", 2010); ("Bob", 2010); ("Tom", 2013)] 2010)
  = ["Joe"; "Bob"])
          "filter by year mixed";;

() ;;

test ()
;;
