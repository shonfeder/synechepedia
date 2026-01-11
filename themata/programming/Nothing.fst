module Nothing

type milk  = | Milk
type cream = | Cream

type drink additive =
  | Coffee : option additive -> drink additive
  | Tea    : option additive -> drink additive

let coffee_with_milk : drink milk = Coffee (Some Milk)
let coffee_without (additive : Type): drink additive = Coffee None

let coffee_without_milk  : drink milk  = coffee_without milk
let coffee_without_cream : drink cream = coffee_without cream
let black_coffee (#additive:Type) = coffee_without additive

let () = assert (coffee_without_cream = coffee_without_cream)
let () = assert (coffee_without_milk  = coffee_without_milk)
[@@expect_failure]
let () = assert (coffee_without_cream = coffee_without_milk)


let with_cream #additive (drink : drink additive) =
  match drink with
  | Coffee _ -> Coffee (Some Cream)
  | Tea _ -> Tea (Some Cream)

/// We can add cream to black coffee
let () = assert (with_cream #milk black_coffee = Coffee (Some Cream))
/// Be we can also replace the milk in coffee with cream
let () = assert (with_cream coffee_with_milk = Coffee (Some Cream))
/// Or change coffee_with_milk into
/// This is perfectly reasonable when `drink` is a model of orders: consider,
/// the order "I'll have a coffee with milk", quickly replaced with, "actually,
/// make that cream instaed, please!"

/// But this is unreasonable when `drink` is meant to model the drinks
/// themselves: because it is practially impossible to get the milk out of
/// coffee once mixed. This unrealistic model of liquids shows that the
/// modelling of "orders" should be distinct from the modeling of "products"
/// delivered to satisy an order.
