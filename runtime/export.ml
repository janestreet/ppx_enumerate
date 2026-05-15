let all_of_bool = [ false; true ]
let all_of_unit = [ () ]
let all_of_option all_of_elt = None :: List.map (fun elt -> Some elt) all_of_elt

let all_of_or_null all_of_elt =
  Basement.Or_null_shim.Null
  :: List.map (fun elt -> Basement.Or_null_shim.This elt) all_of_elt
;;
