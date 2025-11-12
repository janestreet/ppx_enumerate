open Ppxlib

(** Generate the derivation for [all] from a type declaration. Assumes the type
    declaration is not actually recursive (otherwise the enumeration would be infinite).

    [exhaust_check] should probably be true. If [exhaust_check] is [false], some code is
    generated to prevent the compiler from complaining about missing cases in the
    generation code, and a catchall with [assert false] is added. (derive inline enumerate
    with [~no_exhaustiveness_check] to see how that works). *)
val enum_of_td : exhaust_check:bool -> type_declaration -> structure

val enumerate : Deriving.t
