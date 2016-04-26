#use "topfind";;
#require "js-build-tools.oasis2opam_install";;

open Oasis2opam_install;;

generate ~package:"ppx_enumerate"
  [ oasis_lib "ppx_enumerate"
  ; file "META" ~section:"lib"
  ]
