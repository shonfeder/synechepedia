(* Semiotic model of https://en.wikipedia.org/wiki/Order_(business)#Spoken_orders *)

module type DOMAIN = sig
  type request
  type modification
end

module type ORDER =
sig
  module Domain : DOMAIN
  type t = Domain.request * Domain.modification option
  val v : ?with_:Domain.modification -> Domain.request -> t
end

(* A naive model of orders, producing a way to generate orders for *all* possible domains *)
module Naive (D : DOMAIN) : ORDER = struct
  module Domain = D

  type t = Domain.request * Domain.modification option
  let v ?with_ request = (request, with_)
end

let generic_order
    (type request modification)
  : ?with_:modification -> request -> (request * modification option)
  = fun ?(with_:modification option) (r:request) ->
  let module O = Naive (struct
      type nonrec request = request
      type nonrec modification = modification
    end)
  in
  (r, with_)

(* What if you order a "Coffee without a unicorn"? You've requested something that *)
(* we would assume is not in the domain of discourse. *)


(* end *)

type 'a coffee_order = Coffee of 'a option

let coffee_with_milk     : [> `milk ] coffee_order = Coffee (Some `milk)
let coffee_without_milk  : [> `milk ] coffee_order = Coffee None
let coffee_with_cream    : [> `cream] coffee_order = Coffee (Some `cream)
let coffee_without_cream : [> `cream] coffee_order = Coffee None

let () = assert (coffee_without_milk = coffee_without_cream)

type milk = Milk
type cream = Cream

type milk = Milk
type cream = Cream

type drink = Coffee | Tea
type additive = Milk | Cream | Honey

module type ORDER = sig
  type t
end

module A = struct
  type order =
    { drink: drink
    ; additive: additive option
    }

  let coffee_with_cream =
    { drink = Coffee
    ; additive = Some Cream
    }
  let coffee_with_milk =
    { drink = Coffee
    ; additive = Some Milk
    }

  let coffee_without_cream =
    { drink = Coffee
    ; additive = None
    }
  let coffee_without_milk  =
    { drink = Coffee
    ; additive = None
    }

  (* Cannot represent the difference *)
  let () = assert (coffee_without_cream = coffee_without_milk)

  (* I.e., it's just *)
  let black_coffee =
    { drink = Coffee
    ; additive = None
    }
end

module B = struct
  type order =
    { drink : drink
    ; additive : additive
    ; has_additive : bool
    }

  let coffee_with_cream =
    { drink = Coffee
    ; additive = Cream
    ; has_additive = true
    }
  let coffee_with_milk =
    { drink = Coffee
    ; additive = Milk
    ; has_additive = true
    }

  let coffee_without_cream =
    { drink = Coffee
    ; additive = Cream
    ; has_additive = false
    }
  let coffee_without_milk  =
    { drink = Coffee
    ; additive = Milk
    ; has_additive = false
    }

  (* Represents the difference *)
  let () = assert (not (coffee_without_cream = coffee_without_milk))

  (* But we cannot correctly represent black coffee! *)
  let black_coffee () =
    { drink = Coffee
    ; additive = (failwith "??" : additive)
    ; has_additive = false
    }
end

module C = struct
  type 'additive order =
    { drink    : drink
    ; additive : 'additive option
    }

  (** We can index the additive the type now *)
  let coffee_with_cream : [`cream] order =
    { drink = Coffee
    ; additive = Some `cream
    }
  let coffee_with_milk : [`milk] order =
    { drink = Coffee
    ; additive = Some `milk
    }

  (** We can define an order for black coffee in general:  *)
  let black_coffee : [`without of _] order =
    { drink = Coffee
    ; additive = None
    }

  (** We can specialize the orders by constraining the types with a lower bound *)
  let coffee_without_cream : [> `without of [> `cream]] order = black_coffee
  let coffee_without_milk  : [> `without of [> `milk ]] order = black_coffee

  (** And we *can* still compare these for equality *)
  let () =
    assert (coffee_without_cream = coffee_without_milk)

  (** We are now also able to represent, statically, the incompatibility of
      these two orders by constraining the types to upper bounds *)
  let coffee_without_milk  = (coffee_without_milk  :> [`without of [< `milk  ]] order)
  let coffee_without_cream = (coffee_without_cream :> [`without of [< `cream ]] order)

  (** And now the two orders are incompatible *)
  (* let () = *)
  (*   assert (coffee_without_cream = coffee_without_milk) *)
  (* 93 |   let () = assert (coffee_without_cream = coffee_without_milk) *)
  (*                                                ^^^^^^^^^^^^^^^^^^^ *)
  (* Error: The value coffee_without_milk has type [< `milk ] order *)
  (*        but an expression was expected of type [< `cream ] order *)
  (*        These two variant types have no intersection *)

  (** But we *cannot* specify an order just for a drink without any additive,
      so we can always get orders with and without an additive mixed up: *)

  (* let _ : [`cream] order list = [coffee_with_cream; coffee_without_cream] *)
end

(* module D = struct *)
(*   type 'a without = | *)
(*   type 'a order = *)
(*     | With_additive : { drink : drink ; additive : 'a } -> 'a order *)
(*     | Black : drink -> 'a without order *)

(*   (\** We can still index the additive in the type *\) *)
(*   let coffee_with_cream : [`cream] order = *)
(*     With_additive *)
(*       { drink = Coffee *)
(*       ; additive = `cream *)
(*       } *)
(*   let coffee_with_milk : [`milk] order = *)
(*     With_additive *)
(*       { drink = Coffee *)
(*       ; additive = `milk *)
(*       } *)

(*   let black_coffee : _ without order = Black Coffee *)

(*   let coffee_without_milk : [> `milk] without order = *)
(*     black_coffee *)
(*   let coffee_without_cream : [> `cream] without order = *)
(*     black_coffee *)

(*   (\** And we *can* still compare these for equality *\) *)
(*   let () = *)
(*     assert (coffee_without_cream = coffee_without_milk) *)

(*   (\** But now an order for black coffee can be specified *\) *)
(*   let black_coffees : _ without order list = *)
(*     [coffee_without_milk; coffee_without_cream] *)

(*   (\* let _ = coffee_with_cream :: black_coffees *\) *)
(*   (\* 165 |   let _ = coffee_with_cream :: black_coffees *\) *)
(*   (\*                                      ^^^^^^^^^^^^^ *\) *)
(*   (\* Error: The value black_coffees has type *\) *)
(*   (\*          [> `cream | `milk ] without order list *\) *)
(*   (\*        but an expression was expected of type [ `cream ] order list *\) *)
(*   (\*        Type [> `cream | `milk ] without is not compatible with type *\) *)
(*   (\*          [ `cream ] *\) *)
(* end *)
