(* module Syntax: syntax trees and associated support functions *)

open Support.Pervasive
open Support.Error

(* Data type definitions *)
type ty =
    TyBool
  | TyNat

type term =
    TmTrue of info
  | TmFalse of info
  | TmIf of info * term * term * term
  | TmZero of info
  | TmSucc of info * term
  | TmPred of info * term
  | TmIsZero of info * term
  | TmNot of info * term
  | TmAnd of info * term * term

type command =
  | Eval of info * term



(* Printing *)
val printtm: term -> unit
val printtm_ATerm: bool -> term -> unit
val printty : ty -> unit

(* Misc *)
val tmInfo: term -> info

